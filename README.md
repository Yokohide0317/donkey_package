# donkey_package

MacOS用、Donkeycarの環境構築シェルスクリプトです。

## 実行方法
git clone https://github.com/Yokohide0317/donkey_package.git
で、任意のディレクトリにcloneしてください。

その後、
cd <任意のディレクトリ>/donkey_package
sh 1_package.sh
sh 2_package.sh

の順で進めます。

## 内容

1_package.shでは、
Donkey_sim、miniConda、Gitのインストールを流れ作業で促します。
ほぼ手作業で、zipファイルの解凍なども必要となります。


2_package.shでは、
必要packageのcloneや、mkdirなどのディレクトリを自動生成します。
ほぼ自動ですが、最後の4行は一行ずつコピーして、貼り付け実行してください。

## 注意事項
pipなどのパッケージが正しくインストールされていない可能性があるので、
随時インストールを行ってください。
また、2_package.shには、事前にGitHubの登録および、git configでシェルにアカウントを登録している必要があります。
実行前に確認をお願いします。
