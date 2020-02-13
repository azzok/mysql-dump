#!/bin/sh
cd /home/trouni/public_html/wp1/db_dump/
datevar=`date +"%m-%d-%Y_%H-%M-%S"`

#mysqldump -u username -p database --ignore-table=database.table1 --ignore-table=database.table2 > database.sql
 
#value=3;
#live site cred
#mysqldump -utrouni_wp1bk -plT1B{+LBKWn} trouni_wp1_backup -t --lock-tables=false wpzendo_20_postmeta_old_orders_feb_5 > cronPostMeta/wpzendo_20_postmeta_$datevar.sql;
#mysqldump -utrouni_wp1bk -plT1B{+LBKWn} trouni_wp1_backup -t --skip-lock-tables wpzendo_20_postmeta | gzip > cronPostMeta/wpzendo_20_postmeta_$datevar.sql.gz;

#test site cred
#mysqldump -utrouni_wplive -p9txs+%tVLN~k  trouni_wp1 -t --lock-tables=false wpzendo_20_postmeta_old_orders_feb_5 > cronPostMeta/wpzendo_20_postmeta_$datevar.sql;
#mysqldump -utrouni_wplive -p9txs+%tVLN~k  trouni_wp1 -t --skip-lock-tables 	wpzendo_20_postmeta | gzip > cronPostMeta/wpzendo_20_postmeta_$datevar.sql.gz;
#--lock-tables=false

#staging site cred
#mysqldump -utrouni_stagingte -pDfiAL3cA*uL! trouni_staging2 -t --skip-lock-tables wpzendo_20_postmeta | gzip > cronPostMeta/wpzendo_20_postmeta_$datevar.sql.gz;


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
