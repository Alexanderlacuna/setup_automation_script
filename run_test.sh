
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


git config --global credential.helper cache


echo -n "Install brave browser"

sudo snap install brave




# get the ubuntu version

echo -n "removing firefox"

if [ "$(lsb_release -sr)"== "20.04" ]
then
   echo -n "removing firefox"

   sudo apt-get --purge autoremove firefox
   sudo rm -Rf /etc/firefox/

   sudo rm -Rf /usr/lib/firefox*

else
    sudo snap remove firefox
    rm -rf ~/Downloads/firefox.tmp/
    
    
fi 
