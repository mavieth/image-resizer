#!/bin/bash

mkdir -p dist
mkdir -p originals

declare -a sizes=("1920x1080" "1200x628" "1024x512" "600x400" "300x200")

for image in `ls *.{png,jpeg,jpg}`; do
    cp $image "dist/${image%.*}-original.png"
    cp $image originals/$image
    mogrify $image -filter Triangle -define filter:support=2 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip $image
    for size in "${sizes[@]}"; do
        if [[ ! -f "dist/${image%.*}-$size.png" ]]; then
            convert ${image} -resize "$size^" "dist/${image%.*}-$size.png"
        fi
    done
    rm $image
done