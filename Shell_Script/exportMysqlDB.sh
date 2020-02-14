#!/bin/sh
cd /home/trouni/public_html/wp1/db_dump/
datevar=`date +"%m-%d-%Y_%H-%M-%S"`

#exportFullDB
mysqldump -uUsername -pPassword database > database.sql
 
#exportFullDB & Ignore some tables
mysqldump -uUsername -pPassword database --ignore-table=database.table1 --ignore-table=database.table2 > database.sql

#exportParticular Table
mysqldump -uUsername -pPassword database -t --skip-lock-tables tableName > tableName.sql

#exportParticular Table with Select Query
mysqldump -uUsername -pPassword database tableName --where="1=1 limit 100" > wpPostCustomSelectQuery.sql
