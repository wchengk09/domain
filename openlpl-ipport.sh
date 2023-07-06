#!/bin/bash
source /etc/profile
source ~/.profile
cd /home/kevin/kevin/code/openlpl
if [ $# != 2 ]; then
    echo "Usage: "$0" <port> <file>"
    echo eg: $0 80 80.txt
    exit
fi

ssh -R 80:localhost:$1 sh@sh3.neiwangyun.net > $2.openlpl_tmp 2>> log2.txt &
sleep 20
cat $2.openlpl_tmp | grep ipport | grep -v tunnel | awk '{print $3}' > $2
rm $2.openlpl_tmp