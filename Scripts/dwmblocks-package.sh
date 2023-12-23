# Query how many package are outdated.

outdated_packages=$(pacman -Qu | wc -l)

if [ $outdated_packages == "0" ]
then
    echo ""
else
    echo "$outdated_packages "
fi
