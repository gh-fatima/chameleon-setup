udo apt-get install git
git clone https://github.com/gh-fatima/chameleon-setup.git
cd chameleon-setup
bash install_gcloud.sh
cd ..
git clone https://github.com/gh-fatima/One-Epoch.git
gcloud auth login
gsutil cp gs://advml/logs.zip ~/One-Epoch
