#!/bin/bash
$filename=FaceGenerator
source ./env/Scripts/activate
jupyter nbconvert --to python "./$filename.ipynb"
python "./$filename.py"