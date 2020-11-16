#!/usr/bin/env bash
date1="$1"
tmpdate=`date -d "-0 day $date1" +%Y%m%d%H%M%S`

cd /home/odoo/dwg2svg/svg
echo "create gis from database"
python ../main.py
echo $tmpdate >> Readme.md
echo $tmpdate 

<<<<<<< HEAD
git add .
=======
git add  --ignore-removal  .
>>>>>>> eeef80a88a4483ccd873903027fbd7f7c8ce7584
git commit -m  "${tmpdate}"
git push -u origin master

