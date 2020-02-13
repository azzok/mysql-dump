#!/bin/sh
cd /home/trouni/public_html/wp1/db_dump/
datevar=`date +"%m-%d-%Y_%H-%M-%S"`

if mysqldump -utrouni_wp1bk -plT1B{+LBKWn} trouni_wp1_backup -t --skip-lock-tables wpzendo_20_postmeta | gzip > cronPostMeta/wpzendo_20_postmeta_$datevar.sql.gz;
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
