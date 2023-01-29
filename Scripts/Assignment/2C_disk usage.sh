# !/bin/sh

# Author : Siddharth Sutar
# Date : 28 Jan 2023

# Algorithm
# df -Ph gives us the disk usage
# grep is to get the data from the filesystem
# awk then prints column 5th and 1st
# while reading the storage of each disk we will be converting the % to int using sed
# checking whether it is actually above 90 if it is above 90 then mail the user above it then else we will be print a simple msg that disk space is under control


df -Ph | grep -vE '/Filesystem|tmpfs|cdrom' | awk '{ print $5,$1 }' | while read output;
do
    echo $output
    used=$(echo $output | awk '{print $1}' | sed s/%//g)
    partition=$(echo $output | awk '{print $2}')
    if [ $used -gt 90 ]; then
        echo "The partition \"$partition\" on $(hostname) has used $used% at $(date)" | mail -s "Disk Space Alert: $used% Used On $(hostname)" siddharth@siddharth-asus-vivobook
        echo "Email sent regrading $partition"
    else
        echo "Disk space usage is in under control"
    fi
done

# time to automate
# sudo chmod +x ./2C_disk usage.sh (Run in terminal from this folder)
# sudo crontab -e
# 0 8 * * * sudo ./2C_disk usage.sh > /dev/null 2>&1 

# (Note path can be different)

