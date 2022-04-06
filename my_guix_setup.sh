#!/bin/bash


#execute this as root user

wget 'https://guix.gnu.org/install.sh'

wget 'https://sv.gnu.org/people/viewgpg.php?user_id=127547' \
      -qO - | gpg --import -


echo `guix --version`



