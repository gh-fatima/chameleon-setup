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


