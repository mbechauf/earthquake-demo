#!/bin/sh

if [ $# -ne 1 ]
then
	echo "usage $0 number_of_users"
	exit 1
fi

for i in `seq 1 $1` 
do
	user="bcgtabigdata"$i
	echo Deleting ... $user
	./deleteuser.sh $user
done

