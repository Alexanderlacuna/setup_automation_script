#!/bin/sh
MY_DIR=$(dirname $(readlink -f $0))

# files in order



declare -a basic=()
echo -e "${RED}Please download guix first as root user"

while true; do
    read -p "Do you have guix on your system?y/n " yn
    case $yn in
        [Yy]* ) basic=("run_test.sh" "emacs_setup.sh" "database_installer.sh" "rust_setup.sh");
break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


for file in  ${basic[*]}
do 
   source  $MY_DIR/$file
done

