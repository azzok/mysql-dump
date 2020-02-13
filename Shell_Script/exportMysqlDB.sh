#!/bin/sh
cd /home/trouni/public_html/wp1/db_dump/
datevar=`date +"%m-%d-%Y_%H-%M-%S"`

#exportFullDB
mysqldump -uUsername -pPassword database > database.sql
 
#exportFullDB & Ignore some tables
mysqldump -uUsername -pPassword database --ignore-table=database.table1 --ignore-table=database.table2 > database.sql

#exportParticular DB
mysqldump -uUsername -pPassword database -t --skip-lock-tables wpzendo_20_postmeta > database.sql