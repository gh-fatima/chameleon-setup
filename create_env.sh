wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh 
# koli Enter
# yes
# Enter
# yes
# new terminal 
conda create -n Sup python=3.9
# y
conda activate Sup
conda install cudatoolkit=11.7 -c nvidia
# y
pip install torch
pip install torchvision
pip install matplotlib
pip install tqdm
pip install scikit-learn
pip install torchmetrics
pip install dataset
