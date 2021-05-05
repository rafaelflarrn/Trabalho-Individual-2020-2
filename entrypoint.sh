#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE myproject;
    CREATE USER myuser WITH PASSWORD 'password';
    GRANT ALL PRIVILEGES ON DATABASE myproject TO myuser;
    ALTER USER myuser CREATEDB;
EOSQL
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:8000
exec "$@"