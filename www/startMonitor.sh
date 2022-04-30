#!/bin/sh

cd /home/tigress/mnt/EXFAT/datalogs
cp --backup datalog.csv /home/tigress/mnt/EXFAT/datalogs/backupLogs
rm datalog.csv

#python script which starts readDatacpp and monitors its progress
cd /home/tigress/site/www 

sudo -u tigress screen -d -m -S pyscript bash -c "python checkUptime.py"




