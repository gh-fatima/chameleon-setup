#!/bin/bash
# Cloaning nessessery files from my github
function install_custom_mlserver() {
    echo "Installing the customized MLServer"
    cd ~/ipa/MLServer
    git checkout configure-custom-1
    make install-dev
    cd ..
    echo "MLServer installation complete"
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


#!/bin/bash

# Update and install necessary packages
function install_packages() {
    echo "Updating packages"
    sudo apt-get update -y
    echo "Installing packages"
    sudo apt-get install ffmpeg libsm6 libxext6 -y
    echo "Packages installation complete"
    echo
}

# Install and activate Conda environment
function install_conda_environment() {
    echo "Removing Conda environment"
    conda deactivate
    conda env remove --name central

    echo "Installing and activating Conda environment"
    wget https://repo.anaconda.com/miniconda/Miniconda3-py39_23.3.1-0-Linux-x86_64.sh -O miniconda-39.sh
    bash miniconda-39.sh -fb
    rm miniconda-39.sh

    source ~/miniconda3/etc/profile.d/conda.sh
    conda init --all
    conda create --name central -y python=3.9.15
    conda activate central
    echo "Conda environment installation complete"
    echo
}

# Install customized MLServer
function install_custom_mlserver() {
    echo "Installing the customized MLServer"
    cd ~/ipa/MLServer
    git checkout configure-custom-1
    make install-dev
    cd ..
    echo "MLServer installation complete"
    echo
}

# Install ipa requirements
function install_inference_pipeline() {
    echo "Installing ipa requirements"
    cd ~/ipa
    pip install -r requirements.txt
    cd ..
    echo "ipa requirements installation complete"
    echo
}

# Install load_tester
function install_load_tester() {
    echo "Installing load tester"
    cd ~/ipa/load_tester
    pip install -e .
    cd ..
    echo "load_tester installation complete"
    echo
}

# Call the functions
install_packages
install_conda_environment
install_custom_mlserver
install_inference_pipeline
install_load_tester
# Install ipa requirements
function install_inference_pipeline() {
    echo "Installing ipa requirements"
    cd ~/ipa
    pip install -r requirements.txt
    cd ..
    echo "ipa requirements installation complete"
    echo
}

# Install load_tester
function install_load_tester() {
    echo "Installing load tester"
    cd ~/ipa/load_tester
    pip install -e .
    cd ..
    echo "load_tester installation complete"
    echo
}

# Call the functions
install_packages
install_conda_environment
install_custom_mlserver
install_inference_pipeline
install_load_tester
