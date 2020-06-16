<?php

/*  Import Full DB  */
$importFullDB = shell_exec("mysql -uUsername -pPassword DatabaseName <  db_dump/dumpFileName.sql 1> db_dump/db_import_success_".date('d-m-Y-H-i-s').".log 2> db_dump/db_import_error_".date('d-m-Y-H-i-s').".log");

?>

--------------------------------
Error : 
ERROR 1118 (42000) at line 316931: Row size too large (> 8126). Changing some columns to TEXT or BLOB may help. In current row format, BLOB prefix of 0 bytes is stored inline.
---------------------------------

Resolve Query: 
SET GLOBAL innodb_strict_mode = 0;
---------------------------------
Error
'mysql' is not recognized as an internal or external command,
operable program or batch file.
---------------------------------

Resolve Query
Add PATH : 
D:\xampp\mysql\bin
