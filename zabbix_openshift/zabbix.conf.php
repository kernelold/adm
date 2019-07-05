<?
// Zabbix GUI configuration file.
global $DB;

$DB["TYPE"]                             = 'MYSQL';
$DB["SERVER"]                   = 'localhost';
$DB["PORT"]                             = '0';
$DB["DATABASE"]                 = 'zabbix';
$DB["USER"]                             = 'zabbix';
$DB["PASSWORD"]                 = 'oDWp7akWrxWiMAIRCoYJ';
// Schema name. Used for IBM DB2 and PostgreSQL.
$DB["SCHEMA"]                   = '';

$ZBX_SERVER                             = '127.13.151.129';
$ZBX_SERVER_PORT                = '30051';
$ZBX_SERVER_NAME                = 'Overseer';

$IMAGE_FORMAT_DEFAULT   = IMAGE_FORMAT_PNG;
?>
