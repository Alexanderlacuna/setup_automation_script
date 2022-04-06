
#!/bin/bash

echo `guix  --version`


echo "updating the system"
sudo apt update

echo "installing  snap"
sudo apt install snapd


echo "installing sublime text"
sudo snap install sublime-text --classic


echo "installing git"



sudo apt install git


git --version

echo -n "Enter git username: " 

read username

echo -n "Enter git email: " 


read email

git config --global user.name $username
git config --global user.email $email


git config --list