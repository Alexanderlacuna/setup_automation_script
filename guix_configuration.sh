#!/bin/bash


#for safety

cp ~./profile    ~./old_profile

guix pull

hash guix

echo `which guix`



cp ./.guixrc ~/.guixrc


echo "source ~/.guixrc" >> ~/.profile

RED='\033[0;31m'

echo -e "${RED}Perform a logout"