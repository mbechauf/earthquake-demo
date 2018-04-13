#!/bin/sh

if [ $# -ne 1 ]
then
	echo "Usage createuser username"
	exit 1
fi

aws iam create-user --user-name $1
aws iam add-user-to-group --group-name bcgtaclass --user-name $1 
aws iam create-login-profile --user-name $1 --password initial --password-reset-required

