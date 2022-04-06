#!/bin/bash


# migrate to wget file rather than drive

cd ~/Downloads

gzip -dk file.gz

mysql -u kabui -p database_name < ./file_here


