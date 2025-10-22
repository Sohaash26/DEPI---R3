#!/bin/bash
read -p "enter your grade:" grade

if [ "$grade" -ge 90 ]; then 
	echo "excellent"

elif [ "$grade" -ge 70 ]; then
	echo "good"

elif [ "$grade" -ge 50 ]; then
	echo "passed"

else 
	echo "failed"

fi

