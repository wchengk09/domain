#!/bin/bash
for i in $(ps aux | grep ssh | grep "80:localhost" | grep "sh@sh3.neiwangyun.net" | awk '{print $2}'); do
    kill -9 $i
done

for i in $(ps aux | grep /bin/bash | grep ./start.sh | awk '{print $2}'); do
    kill -9 $i
done