#!/bin/sh

ls
composer install
npm run build
php artisan key:generate
php artisan migrate:fresh --seed
php-fpm &

sleep 5

tail -f /dev/null