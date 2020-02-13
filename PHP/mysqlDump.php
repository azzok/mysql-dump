<?php

/*  Dump Full DB & Ignore Tables */
$dumpFullDBAndIgnorSomeTables = shell_exec("mysqldump -uUsername -pPassword DatabaseName --ignore-table=database.table1 --ignore-table=database.table2 > db_dump/database.sql");

/*  Dump Particular Table  */
$dumpParticularTable = shell_exec("mysqldump -uUsername -pPassword DatabaseName -t --skip-lock-tables DatabaseName > db_dump/database.sql");


?>