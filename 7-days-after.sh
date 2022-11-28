#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title 7 Days After
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "month" }
# @raycast.argument2 { "type": "text", "placeholder": "day" }

# open "https://www.google.com/search?q=${1// /%20}"
month=${1}
day=${2}
r=""

for VARIABLE in 0 1 2 3 4 5 6
do
	# Append text param1/param2\n param1
	# total=`expr $day + $VARIABLE`
	year=$(date +%Y)
	current_day=$(($day+$VARIABLE))
	week=$(date -j -v"${month}m" -v"${current_day}d" -v"${year}y" '+%A')
	week=${week:0:3}
	# r+=$month/$current_day + " " + $week' + \n'
	r+="${month}/${current_day} ${week}\n"
	
done

echo -e $r | pbcopy
exit 0
