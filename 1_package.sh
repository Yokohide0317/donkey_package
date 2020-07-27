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

echo "必要なパッケージのインストールを行います。"
echo "準備ができたら、「y」を入力してください。"
wait_y

echo "--------------------"
echo "1. [DonkeySimMac.zipのインストール]"
echo "URLを開きます。「DonkeySimMac.zip」をクリックして、ダウンロードしてください。"
sleep 2
open https://github.com/tawnkramer/gym-donkeycar/releases

wait_y
echo "ダウンロードしたファイルをクリックして、解凍してください"

wait_y

echo "--------------------"
echo "2. [minicondaのインストール]"
echo "URLを開きます。「MacOSX installers」の中の、「Miniconda3 MacOSX 64-bit pkg」をクリックしてください。"
sleep 2
open https://docs.conda.io/en/latest/miniconda.html
wait_y

echo "ダウンロードしたファイルを解凍して、インストールを進めてください。"
echo "インストール完了したら次に進む。"
wait_y

echo "--------------------"
echo "3. [Gitのインストール]"
echo "URLを開きます。みどり色の、「Download Latest Version」をクリックしてください。"
echo "※ 既にGitがインストールされている人は飛ばしてください。"
sleep 2
open https://sourceforge.net/projects/git-osx-installer/files/
wait_y

echo "ダウンロードしたファイルをクリックして、インストールを進めてください。"

wait_y

echo "これで作業1は終了です。"
