#!/bin/bash
mkdir -p ~/opt
guix pull -p ~/opt/guix-pull


source ~/opt/guix-pull/etc/profile


git clone "https://git.genenetwork.org/guix-bioinformatics/guix-bioinformatics.git" ~/guix-bioinformatics


git clone "https://gitlab.inria.fr/guix-hpc/guix-past.git" ~/guix-past

mkdir -p ~/data

cd ~/data

sudo apt-get install p7zip-full

wget "http://ipfs.genenetwork.org/ipfs/QmXQy3DAUWJuYxubLHLkPMNCEVq1oV7844xWG2d1GSPFPL/genotype_files.tar.7z" 



7z x genotype_files.tar.7z




env GUIX_PACKAGE_PATH="/home/kabui/guix-bioinformatics/:/home/kabui/guix-past/modules" GENENETWORK_FILES=/home/kabui/data/genotype_files  ~/opt/guix-pull/bin/guix package -p ~/opt/python3-genenetwork2 --substitute-urls="http://guix.genenetwork.org  https://ci.guix.gnu.org   https://mirror.hydra.gnu.org" -i genenetwork2 --fallback --dry-run