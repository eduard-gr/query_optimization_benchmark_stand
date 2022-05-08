query_optimization_benchmark_stand/provision/tpc-ds

createdb tpcds
psql tpcds -f ./query/tpcds.sql

mkdir -p /tmp/tpcds/


#sudo apt-get install gcc make flex bison byacc git
#make clean
#make OS=LINUX
#Skompilirovannaja versija uze v repo
./dsdgen -scale 1 -FORCE -VERBOSE -dir /tmp/tpcds/

./dsqgen -DIRECTORY ../query_templates -INPUT ../query_templates/templates.lst -VERBOSE Y -QUALIFY Y -DIALECT netezza

cp ../load.sh /tmp/tpcds/

cd /tmp/tpcds/
./load.sh 

rm -rf /tmp/tpcds