#!/bin/bash


mkdir -p ~/project  && mkdir -p ~/project3

cd ~/project && git clone https://github.com/genenetwork/genenetwork3.git

cd ~/project3 && git clone https://github.com/genenetwork/genenetwork2.git




sudo apt-get install wget

mkdir -p ~/python_scripts && cd ~/python_scripts

curl -O https://ci.genenetwork.org/channels.scm

mkdir -p ~/.guix-extra-profiles

guix pull -C ~/python_scripts/channels.scm -p ~/.guix-extra-profiles/genenetwork


cd ~/project3/genenetwork2

export GUIX_PROFILE=~/.guix-extra-profiles/genenetwork

. $GUIX_PROFILE/etc/profile

guix package -i genenetwork2 -p ~/.guix-extra-profiles/genenetwork




