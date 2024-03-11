#!/bin/bash


psql -U postgres -c "CREATE USER admin WITH PASSWORD 'toor';"

psql -U postgres -c "CREATE DATABASE weather;"


psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE weather TO admin;"

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
