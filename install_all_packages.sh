#!/bin/bash
# Cloning nessessery files from my github
function git_clone() {
    echo "cloning files"
    udo apt-get install git
    git clone https://github.com/gh-fatima/chameleon-setup.git
    cd chameleon-setup
    bash install_gcloud.sh
    cd ..
    git clone https://github.com/gh-fatima/One-Epoch.git
    gcloud auth login
    gsutil cp gs://advml/logs.zip ~/One-Epoch
    echo
}



# Install and activate Conda environment
function install_conda_environment() {
    echo "Removing Conda environment"
    conda deactivate
    conda env remove --name Sup
    
    echo "Installing and activating Conda environment"
    wget https://repo.anaconda.com/miniconda/Miniconda3-py39_23.3.1-0-Linux-x86_64.sh -O miniconda-39.sh
    bash miniconda-39.sh -fb
    rm miniconda-39.sh
    
    source ~/miniconda3/etc/profile.d/conda.sh
    conda init --all
    conda create --name Sup -y python=3.9
    conda activate Sup
    conda install cudatoolkit=11.7 -c nvidia
    pip install -r requirements.txt
    echo "Conda environment installation complete"
}

