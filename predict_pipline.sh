#!/usr/bin/env bash

# Classification
conda activate WCE_classification

python classification/tools/predict.py

conda deactivate

# Instance segmentation
conda activate SAMed

python predict.py

conda deactivate