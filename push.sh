#!/bin/bash
source /etc/profile
source ~/.profile
sleep 30
cd /home/kevin/kevin/code/openlpl
git add .
git commit -m "changed domain"
git push origin master -f