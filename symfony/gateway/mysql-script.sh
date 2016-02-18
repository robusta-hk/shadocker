#!/usr/bin/env bash

#!/bin/bash

# starting mysql

#/usr/bin/mysqld_safe > /dev/null 2>&1 &
#/etc/init.d/mysql start &


#sleep 5

# the commands

mysql -uroot -e "CREATE DATABASE gateway;"

# shutdown
#mysqladmin -uroot shutdown