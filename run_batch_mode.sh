#!/bin/bash
dir=outputs
filename="$dir/$(date +'run_%d_%m_%Y-%T')"
if [ ! -d $dir ];then
    mkdir $dir
fi
echo "Launching, output filename $filename"
python3 FaceGenerator.py &> $filename &
