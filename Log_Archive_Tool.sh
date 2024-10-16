#! /bin/bash
log_folder=/var/log

 

tar -czvf /home/$(date | awk '{print $2_$3_$6}').tar -C $log_folder 