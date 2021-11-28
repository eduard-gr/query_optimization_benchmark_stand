#!/usr/bin/env bash

sudo -u postgres psql -c "create schema tpch;"
sudo -u postgres psql -c "set search_path to tpch;"
sudo -u postgres psql -f "/home/vagrant/provision/tpc-h/schema.sql"

cd /home/vagrant/provision/tpc-h/TPC-H_Tools_v3.0.0/dbgen
make clean
make

cp dbgen /tmp/
cp dists.dss /tmp/

sudo -u postgres psql -c "\copy tpch.region     from '/tmp/region.tbl'        DELIMITER '|' CSV;"
sudo -u postgres psql -c "\copy tpch.nation     from '/tmp/nation.tbl'        DELIMITER '|' CSV;"
sudo -u postgres psql -c "\copy tpch.customer   from '/tmp/customer.tbl'    DELIMITER '|' CSV;"
sudo -u postgres psql -c "\copy tpch.supplier   from '/tmp/supplier.tbl'    DELIMITER '|' CSV;"
sudo -u postgres psql -c "\copy tpch.part       from '/tmp/part.tbl'            DELIMITER '|' CSV;"
sudo -u postgres psql -c "\copy tpch.partsupp   from '/tmp/partsupp.tbl'    DELIMITER '|' CSV;"
sudo -u postgres psql -c "\copy tpch.orders     from '/tmp/orders.tbl'        DELIMITER '|' CSV;"
sudo -u postgres psql -c "\copy tpch.lineitem   from '/tmp/lineitem.tbl'    DELIMITER '|' CSV;"
