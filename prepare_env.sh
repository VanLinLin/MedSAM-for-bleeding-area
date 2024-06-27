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

conda env create -n medsam python=3.10 -y

conda activate medsam

conda install conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.8 -c pytorch -c nvidia

conda install -c conda-forge cudatoolkit-dev -y

git clone https://github.com/bowang-lab/MedSAM

cd MedSAM || exit

pip install -e .

conda deactivate

echo Finish creating instance segmentation environment!