#!/bin/sh

if [ $# -ne 1 ]
then
	echo "Usage deleteuser username"
	exit 1
fi

aws iam remove-user-from-group --user-name $1 --group-name bcgtaclass
aws iam delete-login-profile --user-name $1
aws iam delete-user --user-name $1

