
# find fix not stable maybe call script to make sure snap is installed
 sudo snap install emacs --classic

 # fetch the github repo

mkdir -p  ~/.emacs.d
git clone "https://github.com/Alexanderlacuna/Emacs-Config.git"


cd Emacs-Config

cp ~/Emacs-Config/init3.el ~/.emacs.d/init.el

mkdir -p ~/.emacs.d/settings

cp ~/Emacs-Config/settings ~/.emacs.d
