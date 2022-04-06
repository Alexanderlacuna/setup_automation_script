#!/bin/bash


# migrate to wget file rather than drive

cd ~/Downloads

gzip -dk db.2020-10-21.143234.sql.gz
echo -e "${RED} import the sql file"


mysql -u kabui -p db_webqtl < db.2020-10-21.143234.sql


