<?php
$CONFIG = array (
  'datadirectory' => '/data',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/nextcloud/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/apps2',
      'url' => '/apps2',
      'writable' => true,
    ),
  ),
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'instanceid' => 'ocadc83b19e7',
  'passwordsalt' => '2zwRVGFXynUqnXmTAIAzmwegOG9ofQ',
  'secret' => 'vJb0kqAFJaFMD8gDOeHuVPKYDrbWa3OEyXFO6YsnXCrrBh+l',
  'trusted_domains' => 
  array (
    0 => 'localhost',
  ),
  'overwrite.cli.url' => 'http://localhost',
  'dbtype' => 'mysql',
  'version' => '13.0.0.14',
  'dbname' => 'nextcloud',
  'dbhost' => 'nextcloud-db',
  'dbport' => '',
  'dbtableprefix' => 'oc_',
  'mysql.utf8mb4' => true,
  'dbuser' => 'nextcloud',
  'dbpassword' => '1234567890abc',
  'installed' => true,
  'mail_from_address' => 'administrator',
  'logtimezone' => 'Asia/Shanghai',
  'logdateformat' => 'Y-m-d H:i:s',
);