#!/bin/bash

shopt -s nullglob

# feh --bg-fill ~/.wallpaper/arch/istheorederarch.png

cd ~/.wallpaper/ji

while true; do
        files=()
        for i in *.jpg *.png; do
                [[ -f $i ]] && files+=("$i")
        done
        range=${#files[@]}
        ((range)) && feh --bg-fill "${files[RANDOM % range]}"
        sleep 256s
done
