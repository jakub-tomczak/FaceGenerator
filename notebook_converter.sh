#!/bin/bash
filename=FaceGenerator
if [ -d env ]; then
    echo "using environment from env directory"
    source ./env/Scripts/activate
fi
jupyter nbconvert --to python "./$filename.ipynb"
