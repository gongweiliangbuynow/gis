#!/usr/bin/env bash
date1="$1"
tmpdate=`date -d "-0 day $date1" +%Y%m%d%H%M%S`

cd /home/odoo/dwg2svg/svg
echo "create gis from database"
python ../main.py
echo $tmpdate >> Readme.md
echo $tmpdate 

git add .
git commit -m  "${tmpdate}"
git push -u origin master

