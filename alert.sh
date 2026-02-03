#!/bin/bash
a=$(sudo systemctl is-active apache2)
c=$(mpstat 1 1 | awk '/Average/ {print 100-$NF}')
echo "$(date) apache status : $a   Cpu usage  : $c" > /var/log/server_update.log



#if [ "$a" == "inactive" ]; then
#echo "$(date) apache is down!" > /var/log/alert_srvice.log
#elif [ "$a" == "active" ]; then 
#echo "$(date) apache is up" > /var/log/alert_srvice.log
#fi
#if [[ $c -gt 5 ]]; then
#echo "$(date) Cpu usage are above 5%" > /var/log/alert_srvice.log
#else
#echo "$(date) Cpu usage are lower than 5%" > /var/log/alert_srvice.log
#fi

