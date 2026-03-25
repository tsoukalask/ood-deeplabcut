#!/bin/bash

# Check if a conda environment is active by looking for CONDA_PREFIX
if [ -z "$CONDA_PREFIX" ]; then
    echo "Error: No Conda environment is currently activated."
    echo "Please activate a Conda environment before running this script."
    exit 1
fi

# Create conda virtual environment
conda create -n DEEPLABCUT python=3.12
conda activate DEEPLABCUT

# Install GPU version of pytorch for CUDA 11.3
conda install pytorch cudatoolkit=11.3 -c pytorch

# Install the latest version of DeepLabCut
pip install --pre deeplabcut[gui]
