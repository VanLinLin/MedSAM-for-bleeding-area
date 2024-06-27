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


# SAM with LoRA Instance segmentation
echo Start create instance segmentation environment!

git clone -b dev_deploy https://github.com/VanLinLin/SAMed.git

conda create -n SAMed python=3.9 -y

conda activate SAMed

pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu117

pip install -r SAMed/requirements.txt

echo Finish creating instance segmentation environment!