#!/bin/bash

STOP=0

while [ $STOP -eq 0 ]
do
	temp=`./pcsensor -m | head -n 1`

	if [ `echo $temp | grep -Ec '^[0-9\.]+$'` != 0 ] ; then
		STOP=1
	fi

	if [ $STOP -eq 0 ] ; then
		sleep 5
	fi
done

SQL="INSERT INTO readings (temp,time) VALUES (${temp}, NOW());"

echo $SQL | mysql -h 172.20.0.2 -u temps -pmysqlpasswordhere temps
