# Get ACPI information and store it in an array

acpi_info=$(acpi -b)
battery_percent=$(awk '{print $4}' <<< $acpi_info | tr -d %,)
battery_state=$(awk '{print $3}' <<< $acpi_info | cut -c 1)
case $battery_state in
    D)
        echo "󰁹 $battery_percent%"
        ;;
    C)
        echo "󰂄 $battery_percent%"
        ;;
    F)
        echo "󱟢 $battery_percent%"
        ;;
    *)
        echo " $battery_percent%"
        ;;
esac

