sudo apt install zstd

createdb ldbcbi



psql -d ldbcbi -f LDBC-BI/postgres/ddl/schema.sql

mkdir -p /tmp/ldbcbi

#lokalnie testovie dannie
cp -r LDBC-BI/postgres/test-data/* /tmp/ldbcbi/

#tut mozno skachat dannie
https://repository.surfsara.nl/datasets/cwi/snb
#skachivat nado faili, on podoshol dlja zagruzki
#social_network-csv_merge_foreign-sf0.1
#etot fail pod voprosom
#social_network-csv_composite_merge_foreign-sf0.1.tar.zst
psql -d ldbcbi -f LDBC-BI/postgres/ddl/load.sql

psql -d ldbcbi -f LDBC-BI/postgres/ddl/schema_constraints.sql
psql -d ldbcbi -f LDBC-BI/postgres/ddl/schema_foreign_keys.sql

#run test
php -f src/json_plan_aggregator.php ldbcbi /home/sk/School/query_optimization_benchmark_stand/provision/LDBC-BI/postgres/queries



git clone https://github.com/ldbc/ldbc_snb_interactive_impls.git
git clone https://github.com/ldbc/ldbc_snb_bi



mkdir -p /tmp/ldbcbi
cd /tmp/ldbcbi

wget -O substitution_parameters.tar.zst https://surfdrive.surf.nl/files/index.php/s/Os3sZKgvu5957fs/download
wget -O social_network-csv_basic-sf0.1.tar.zst https://surfdrive.surf.nl/files/index.php/s/2co4lkR6BtuLoJ7/download
wget -O social_network-csv_composite-sf0.1.tar.zst https://surfdrive.surf.nl/files/index.php/s/xSC4eOuerypRNqn/download
wget -O social_network-csv_composite-longdateformatter-sf0.1.tar.zst https://surfdrive.surf.nl/files/index.php/s/S9QKY33lCSHkbSX/download
wget -O social_network-csv_merge_foreign-sf0.1.tar.zst https://surfdrive.surf.nl/files/index.php/s/SKoGxxNMansDr78/download
wget -O social_network-csv_composite_merge_foreign-sf0.1.tar.zst https://surfdrive.surf.nl/files/index.php/s/zstucCAgGGrY12A/download

tar --use-compress-program=unzstd -xvf social_network-csv_basic-sf0.1.tar.zst                        
tar --use-compress-program=unzstd -xvf social_network-csv_composite-sf0.1.tar.zst                
tar --use-compress-program=unzstd -xvf social_network-csv_merge_foreign-sf0.1.tar.zst
tar --use-compress-program=unzstd -xvf social_network-csv_composite-longdateformatter-sf0.1.tar.zst  
tar --use-compress-program=unzstd -xvf social_network-csv_composite_merge_foreign-sf0.1.tar.zst  
tar --use-compress-program=unzstd -xvf substitution_parameters.tar.zst

rm *.zst
psql -d ldbcbi -c "\copy comment from '/tmp/ldbcbi/social_network-csv_basic-sf0.1/dynamic/comment_0_0.csv' WITH (FORMAT csv,  DELIMITER '|')"

