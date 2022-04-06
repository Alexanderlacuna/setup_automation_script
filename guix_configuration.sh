#!/bin/bash

cp ~./profile    ~./old_profile

guix pull

hash guix

echo `which guix`


git clone "path to configuration file"

cd "cloned directory"

cp "~/cloned_director/guixrc" ~/.guixrc


echo "source ~/.guixrc" >> ~/.profile

RED='\033[0;31m'

echo -e "${RED}Perform a logout"