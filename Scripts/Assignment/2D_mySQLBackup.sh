# Author : Siddharth Sutar
# Date : 29 Jan 2023

#!/bin/sh

# Algorithm
# using mysqldump command
# login to sql server 
# zip the backup 
# if command is successful then print the backup is successful else error

echo "starting database backup"
db_backup="mydb.gz"
sudo mysqldump  -uroot -p test | gzip -c > ./db_backups/${db_backup}
if [ "$?" -eq 0 ]; then
    echo "db backup complete"
else
    echo "db backup failed"
fi

# time to automate
# sudo chmod +x ./2D_mySQLBackup.sh (Run in terminal from this folder)
# sudo crontab -e
# 0 23 * * 0 sudo ./2D_mySQLBackup.sh > /dev/null 2>&1 

# (Note path can be different)