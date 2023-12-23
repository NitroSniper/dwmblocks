#!/bin/bash

volume=$(pamixer --get-volume-human)
if [[ "$volume" == "0%" || "$volume" == "muted" ]]; then
    echo $volume
else
    echo $volume
fi

