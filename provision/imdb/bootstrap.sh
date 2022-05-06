#!/usr/bin/env bash

sudo -u postgres psql -c "createdb imdb"
sudo -u postgres psql -d imdb -f "/home/vagrant/provision/imdb/schema.sql"

mkdir /tmp/imdb/
cd /tmp/imdb/

wget http://homepages.cwi.nl/~boncz/job/imdb.tgz

tar -xf imdb.tgz

rm imdb.tgz
echo "load IMDB data"
sudo -u postgres psql -d imdb -c "\copy aka_name from '/tmp/imdb/aka_name.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy aka_title from '/tmp/imdb/aka_title.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy cast_info from '/tmp/imdb/cast_info.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy char_name from '/tmp/imdb/char_name.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy comp_cast_type from '/tmp/imdb/comp_cast_type.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy company_name from '/tmp/imdb/company_name.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy company_type from '/tmp/imdb/company_type.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy complete_cast from '/tmp/imdb/complete_cast.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy info_type from '/tmp/imdb/info_type.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy keyword from '/tmp/imdb/keyword.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy kind_type from '/tmp/imdb/kind_type.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy link_type from '/tmp/imdb/link_type.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy movie_companies from '/tmp/imdb/movie_companies.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy movie_info from '/tmp/imdb/movie_info.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy movie_info_idx from '/tmp/imdb/movie_info_idx.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy movie_keyword from '/tmp/imdb/movie_keyword.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy movie_link from '/tmp/imdb/movie_link.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy name from '/tmp/imdb/name.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy person_info from '/tmp/imdb/person_info.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy role_type from '/tmp/imdb/role_type.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"
sudo -u postgres psql -d imdb -c "\copy title from '/tmp/imdb/title.csv' WITH (FORMAT csv,  DELIMITER ',', QUOTE '\"', ESCAPE '\')"

rm *

#wget ftp://ftp.fu-berlin.de/misc/movies/database/frozendata/*gz

#cd /tmp/
#repo was deleted
#wget https://bitbucket.org/alberanid/imdbpy/get/5.0.zip

#wget https://github.com/cinemagoer/cinemagoer/archive/master.zip

#unzip master.zip -d ./

#cd /tmp/cinemagoer-master/bin

#pip install cinemagoer
#pip install psycopg2-binary

#python2 imdbpy2sql.py -d /tmp/imdb/ -u postgres://postgres:postgres@localhost/imdb
#python3 imdbpy2sql.py -d /tmp/imdb/ -u postgresql://postgres:postgres@localhost/imdb

