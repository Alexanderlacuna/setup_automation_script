#!/bin/bash





# update emacs guix pull

guix pull 

guix install emacs guile emacs-geiser emacs-geiser-guile

 # fetch the github repo

mkdir -p  ~/.emacs.d


cd ~

git clone "https://github.com/Alexanderlacuna/Emacs-Config.git" 


cp ~/Emacs-Config/init.el ~/.emacs.d/init.el

mkdir -p ~/.emacs.d/settings

cp -r ~/Emacs-Config/settings ~/.emacs.d
