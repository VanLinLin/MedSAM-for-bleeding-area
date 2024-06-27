#!/usr/bin/env bash

# Classification
echo Start create classification environment!

conda env create -f classification/WCE_classification_env.yaml

conda activate WCE_classification

pip install -U openmim

mim install "mmpretrain>=1.0.0rc8"

mim install "mmengine==0.10.3"

conda deactivate

echo Finish creating classification environment!


# Instance segmentation
echo Start create instance segmentation environment!

git clone -b dev https://github.com/VanLinLin/SAMed.git

cd SAMed || exit

conda create -n SAMed python=3.7.11 -y

conda activate SAMed

pip install -r requirements.txt

cd ..

echo Finish creating instance segmentation environment!