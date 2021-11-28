#!/usr/bin/env bash

sudo -u postgres psql -c "createdb tpch;"
sudo -u postgres psql -d tpch -f "/home/vagrant/provision/tpc-h/schema.sql"

cd /home/vagrant/provision/tpc-h/TPC-H_Tools_v3.0.0/dbgen
make clean
make

cp dbgen /tmp/
cp dists.dss /tmp/

/tmp/dbgen -s 1

sudo -u postgres psql -d tpch -c "\copy region     from '/tmp/region.tbl'        DELIMITER '|' CSV;"
sudo -u postgres psql -d tpch -c "\copy nation     from '/tmp/nation.tbl'        DELIMITER '|' CSV;"
sudo -u postgres psql -d tpch -c "\copy customer   from '/tmp/customer.tbl'    DELIMITER '|' CSV;"
sudo -u postgres psql -d tpch -c "\copy supplier   from '/tmp/supplier.tbl'    DELIMITER '|' CSV;"
sudo -u postgres psql -d tpch -c "\copy part       from '/tmp/part.tbl'            DELIMITER '|' CSV;"
sudo -u postgres psql -d tpch -c "\copy partsupp   from '/tmp/partsupp.tbl'    DELIMITER '|' CSV;"
sudo -u postgres psql -d tpch -c "\copy orders     from '/tmp/orders.tbl'        DELIMITER '|' CSV;"
sudo -u postgres psql -d tpch -c "\copy lineitem   from '/tmp/lineitem.tbl'    DELIMITER '|' CSV;"

rm -f /tmp/*.tbl