#!/usr/bin/env bash

#!/bin/bash

# starting mysql

/usr/bin/mysqld_safe > /dev/null 2>&1 &

RET=1
while [[ RET -ne 0 ]]; do
    echo "=> Waiting for confirmation of MySQL service startup"
    sleep 5
    mysql -uroot -e "status" > /dev/null 2>&1
    RET=$?
done

# the commands

mysql -uroot -e "CREATE DATABASE gateway;"

# shutdown
mysqladmin -uroot shutdown