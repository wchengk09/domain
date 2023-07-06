#!/bin/bash
source /etc/profile
source ~/.profile
cd /home/kevin/kevin/code/openlpl
echo "EXEC..." >> log1.txt
./openlpl.sh 80 80.txt &
./openlpl.sh 8001 8001.txt &
./openlpl.sh 8002 8002.txt &
./openlpl.sh 17666 17666.txt &
./openlpl.sh 18666 18666.txt &
./openlpl.sh 17667 17667.txt &
./openlpl.sh 18667 18667.txt &
./openlpl.sh 17668 17668.txt &
./openlpl-ipport.sh 22 22.txt &