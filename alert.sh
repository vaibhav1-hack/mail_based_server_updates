#!/bin/bash
a=$(sudo systemctl is-active apache2)
c=$(mpstat 1 1 | awk '/Average/ {print 100-$NF}')
echo "$(date) apache status : $a   Cpu usage  : $c" > /var/log/server_update.log
