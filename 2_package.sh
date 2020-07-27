#!/usr/bin/sh

function wait_y () {
    read -n 1 -p "🥺「y」を入力で次に進む。 > " str

    echo 
    case "$str" in		#変数strの内容で分岐
      [Yy])
        echo 
        echo 
        ;;
     [Nn])
        echo 
        ;;
    *)
        echo 
        ;;
    esac
}

echo "MacOS用、DonkeyCarのインストールを開始します。"
echo "この作業には先にAnacondaとGitの設定が先に必要です。※ git configなど"
echo "OKならyを入力してください。もしくはCtrl+Cでキャンセルします。"
sleep 2
wait_y

echo "--------------------"
echo "Path構築：~/projects"
cp ./myconfig.py ~/processing_myconfig.py
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
#conda activate donkey
#pip install -e 
#donkey createcar --path mycar


echo "--------------------"
echo "GitHubより、gym-donkeycarのclone"
echo "Path：~/projects/gym-donkeycar"
cd ~/projects
git clone https://github.com/tawnkramer/gym-donkeycar
echo "--------------------"

#conda activate donkey
pip install -e gym-donkeycar

#cd ~/projects/donkeycar/mycar


echo 
echo "Path構築が完了しました。"
echo "最後に、以下のコマンドを順に入力してください。"

echo "--------------------"
echo 
echo "cd ~/projects/donkeycar/"
echo "conda activate donkey"
echo "donkey createcar --path mycar"
echo "mv ~/processing_myconfig.py ~/projects/donkeycar/mycar/myconfig.py"

