path="" ### Add path to your map.sqlite
interval=1800 ### Log interval
logfile="" ### Define file to log the sizes

if [[ $path = "" ]]; then
echo "Open the script and enter the path to the map.sqlite file"
exit
fi

while true
do
getsize=$(du $path | grep -Eo "^[0-9]{1,}")
echo "$(date) -> $(($getsize/1024)) MB" >> $file
sleep $interval
done
