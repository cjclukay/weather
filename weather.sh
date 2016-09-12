#!/bin/bash

curl "https://www.wunderground.com/history/airport/GNV/2016/09/06/DailyHistory.heml?&format=1" > gnv.txt

maxTemp=`awk -F',' '{print $2}' gnv.txt | sort -n | tail -n1`

echo The Max temp is $maxTemp

