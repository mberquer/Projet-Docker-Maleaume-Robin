#!/bin/sh

php artisan key:generate
php artisan migrate:fresh --seed
php-fpm &

sleep 5

tail -f /dev/null