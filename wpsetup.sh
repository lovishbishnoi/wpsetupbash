#!/bin/sh

folderName="$1"
FILE="wp-config.php"
SAMPLEFILE="wp-config-sample.php"

ownerchanges() {
  sudo chown -R www-data:www-data "$folderName"
} 

permissionchanges() {
  sudo chmod -R 777 "$folderName"
}

removewpconfigsample() {

 if find "$folderName/$FILE" -maxdepth 0 -type f | read 
  then rm "$folderName/$SAMPLEFILE"
 fi
  
}

ownerchanges
permissionchanges
removewpconfigsample
