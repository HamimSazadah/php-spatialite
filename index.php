<?php
 $db = new SQLite3('data2.sqlite3');
 $db->loadExtension('mod_spatialite.so');
$rst = $db->query("select objectid,kelurahan,kecamatan,kabupaten,provinsi from sql_statement where Intersects(shape,geomfromtext('POINT (106.983444 -6.2559482)',4326));");
var_dump($rst->fetchArray(SQLITE3_ASSOC));
?>