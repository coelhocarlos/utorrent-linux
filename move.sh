#!/bin/bash

torrentid="$1"
torrentname="$2"
torrentpath="$3"

LABEL=$(/home/brendan/getLabel.py $torrentid)

torrentdest="$torrentpath/$LABEL"
torrentlog="/home/brendan/Documents/torrentCopy.log"

if [ $LABEL == "movies" ];
   then cp -r "$torrentpath/$torrentname" "$torrentdest"
        echo "$torrentname copied to $torrentdest" >> $torrentlog
elif [ $LABEL == "tv" ]; 
   then cp -r "$torrentpath/$torrentname" "$torrentdest"
        echo "$torrentname copied to $torrentdest" >> $torrentlog
else echo "$torrentname was not copied" >> $torrentlog
fi
