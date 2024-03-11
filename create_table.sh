#!/bin/bash

echo "1. Создание пользователя 'admin'"
psql -U postgres -c "CREATE USER admin WITH PASSWORD 'toor';"

echo "2. Создание базы данных 'weather'"
psql -U postgres -c "CREATE DATABASE weather;"

echo "3. Предоставление привилегий пользователю 'admin' для базы данных 'weather'"
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE weather TO admin;"

echo "4. Создание таблицы 'weather'"
psql -U postgres -d weather << EOF
CREATE TABLE weather (
    id serial PRIMARY KEY,
    date date,
    temperatureC integer,
    temperatureF integer,
    summary varchar(50),
    location varchar(50)
);
EOF
