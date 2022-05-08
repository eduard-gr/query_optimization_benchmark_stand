sudo apt install zstd

createdb ldbcbi


#tut mozno skachat dannie
https://repository.surfsara.nl/datasets/cwi/snb

psql -d ldbcbi -f LDBC-BI/postgres/ddl/schema.sql

#struktura failov
#skachivat nado faili, on podoshol dlja zagruzki
#social_network-csv_merge_foreign-sf0.1

#social_network-csv_composite_merge_foreign-sf0.1.tar.zst

psql -d ldbcbi -f LDBC-BI/postgres/ddl/schema_constraints.sql
psql -d ldbcbi -f LDBC-BI/postgres/ddl/schema_foreign_keys.sql

mkdir -p /tmp/ldbcbi
cd /tmp/ldbcbi



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

