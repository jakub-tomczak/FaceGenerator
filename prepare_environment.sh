#!/bin/bash
pip install virtualenv
virtualenv env
source ./env/Scripts/activate
pip install -r requirements.txt
# add kernel for this env
ipython kernel install --user --name=FaceGenerator
