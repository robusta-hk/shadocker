#!/usr/bin/env bash


cd /app;
composer install;

chmod -R 777 /app/app/logs;
chmod -R 777 /app/app/cache;

php app/console doctrine:database:create
php app/console doctrine:schema:update --force
php app/console doctrine:fixtures:load
