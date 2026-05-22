#!/bin/bash

composer install --no-interaction || true

cp .env.example .env || touch .env

php artisan key:generate || true

chmod -R 777 storage bootstrap/cache
