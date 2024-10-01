#!/bin/bash

echo "download is starting..."

sudo apt update && upgrade
echo "installing git"

sudo apt install git

cd /home
sudo mkdir server
cd server

sudo git clone https://github.com/guyWithPaws/Poly-Inside.git

echo "installing dart sdk"
sudo apt-get update && sudo apt-get install apt-transport-https -y
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub \
  | sudo gpg  --dearmor -o /usr/share/keyrings/dart.gpg

echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' \
  | sudo tee /etc/apt/sources.list.d/dart_stable.list

sudo apt-get update && sudo apt-get install dart -y

sudo apt-get install sqlite3 libsqlite3-dev -y

cd Poly-Inside
sudo dart pub get 

cd backend
sudo dart compile exe bin/server.dart
sudo ./bin/server.exe

