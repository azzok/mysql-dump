#!/bin/sh
cd /home/trouni/public_html/wp1/db_dump/
datevar=`date +"%m-%d-%Y_%H-%M-%S"`

if mysqldump -uUserName -pPassWord DatabaseName -t --skip-lock-tables TableName | gzip > cronPostMeta/table_backup_$datevar.sql.gz;
then
	echo "MySql Dump Success";
	#find ./cronPostMeta -mtime +10 -type f -delete;
	#find ./cronPostMeta -mmin +10 -type f -delete;
	if find ./cronPostMeta -mtime +10 -type f -delete;
	then
		echo "Deleted old dump files.";
	else
		echo "Not Deleted":
	fi
else
	echo "MySql Dump Faliure";
fi
