#!/bin/bash
filename=$(date +"run_%d_%m_%Y-%T")
echo 'Launching, output filename $filename'
python3 FaceGenerator.py &> $filename &
echo "Finished FaceGenerator.py, $(date +"%d_%m_%Y-%T")"