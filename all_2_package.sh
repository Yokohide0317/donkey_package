#!/usr/bin/sh

echo "MacOS用、DonkeyCarのインストールを開始します。"

echo "--------------------"
echo "Path構築：~/projects"
cd ~
mkdir projects
cd projects
echo "--------------------"


echo "--------------------"
echo "GitHubより、donkeycarのclone"
echo "Path：~/projects/donkeycar"
git clone https://github.com/autorope/donkeycar
cd donkeycar
git checkout master
echo "--------------------"


conda env create -f ~/projects/donkeycar/install/envs/mac.yml
conda activate donkey

#pip install -e 

donkey createcar --path mycar


echo "--------------------"
echo "GitHubより、gym-donkeycarのclone"
echo "Path：~/projects/gym-donkeycar"
cd ~/projects
git clone https://github.com/tawnkramer/gym-donkeycar
echo "--------------------"

conda activate donkey
pip install -e gym-donkeycar

cd ~/projects/donkeycar/mycar

