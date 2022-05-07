createdb tpcds
psql tpcds -f tpcds.sql

mkdir -p /tmp/tpcds/

./dsdgen -scale 1 -FORCE -VERBOSE -dir /tmp/tpcds/

./dsqgen -DIRECTORY ../query_templates -INPUT ../query_templates/templates.lst -VERBOSE Y -QUALIFY Y -DIALECT netezza

cp ../load.sh /tmp/tpcds/

cd /tmp/tpcds/
./load.sh 

rm -rf /tmp/tpcds