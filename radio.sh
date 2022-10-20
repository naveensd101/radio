#/bin/bash

i=1
echo "Trying $i..."
i=$((i+1))
echo "Running mplayer..."
mplayer http://172.16.32.248:8000/radio.mp3 >/dev/null
while [ $? -ne 1 ] 
do
	echo "Sleeping for 5 sec"
	sleep 5
	echo "Trying $i..."
	i=$((i+1))
	echo "Running mplayer..."
	mplayer http://172.16.32.248:8000/radio.mp3 >/dev/null
done
