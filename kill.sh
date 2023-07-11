source /etc/profile
source ~/.profile
for i in $(ps aux | grep ssh | grep localhost | grep sh3.neiwangyun.net | awk '{print $2}'); do
    kill -9 $i
done