#!/bin/bash

day=`date -d yesterday +%d`

month=`date -d yesterday +%m`

year=`date -d yesterday +%Y`

curl "https://www.wunderground.com/history/airport/GNV/$year/$month/$day/DailyHistory.html?&format=1" >> gnv.txt

maxTemp=`awk -F',' '{print $2}' gnv.txt | sort -n | tail -n1`

echo The Max temp is $maxTemp

