<?php

/*  Import Full DB  */
$importFullDB = shell_exec("mysql -uUsername -pPassword DatabaseName <  db_dump/dumpFileName.sql 1> db_dump/db_import_success_".date('d-m-Y-H-i-s').".log 2> db_dump/db_import_error_".date('d-m-Y-H-i-s').".log");

?>