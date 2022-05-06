#!/usr/bin/env bash

#Postgres repo
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo apt -yq update && sudo apt -yq upgrade

sudo apt -yq install \
mc \
cmake \
postgresql-14 \
postgresql-server-dev-14 \
python3-pip \
python3-dev

#python2cd 

"pg-py-plan-forwarding" {eaaa6745-90aa-471f-a1fa-c722c372eb7a}



sudo usermod -a -G vagrant postgres

sudo apt -yq update && sudo apt -yq upgrade

sudo cp ./provision/postgresql.conf /etc/postgresql/14/main/
sudo cp ./provision/pg_hba.conf /etc/postgresql/14/main/

sudo systemctl restart postgresql@14-main.service

sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres';"

cd ~
git clone https://github.com/eduard-gr/pg_py_plan_forwarding.git

mkdir /home/vagrant/pg_py_plan_forwarding-build
cd /home/vagrant/pg_py_plan_forwarding-build

make -f ../pg_py_plan_forwarding/Makefile
