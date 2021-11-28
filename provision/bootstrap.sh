#!/usr/bin/env bash

#Postgres repo
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt -yq update && sudo apt -yq upgrade

sudo apt -yq install \
mc \
cmake \
postgresql-14


sudo usermod -a -G vagrant postgres

sudo apt -yq update && sudo apt -yq upgrade

sudo cp ./provision/postgresql.conf /etc/postgresql/14/main/
sudo cp ./provision/pg_hba.conf /etc/postgresql/14/main/

sudo systemctl restart postgresql@14-main.service

sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres';"