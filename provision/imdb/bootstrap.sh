#!/usr/bin/env bash

sudo -u postgres psql -c "createdb imdb;"
sudo -u postgres psql -d imdb -f "/home/vagrant/provision/tmdb/schema.sql"

mkdir /tmp/imdb/
cd /tmp/imdb/

wget ftp://ftp.fu-berlin.de/misc/movies/database/frozendata/*gz
wget https://bitbucket.org/alberanid/imdbpy/get/5.0.zip

unzip 5.0.zip -d ./

imdbpy2sql.py -d PATH_TO_GZ_FILES -u postgres://username:password@hostname/imdbload

sudo -u postgres psql -d imdb -c "\copy aka_name to '/tmp/imdb/aka_name.csv' csv"
sudo -u postgres psql -d imdb -c "\copy aka_title to '/tmp/imdb/aka_title.csv' csv"
sudo -u postgres psql -d imdb -c "\copy cast_info to '/tmp/imdb/cast_info.csv' csv"
sudo -u postgres psql -d imdb -c "\copy char_name to '/tmp/imdb/char_name.csv' csv"
sudo -u postgres psql -d imdb -c "\copy comp_cast_type to '/tmp/imdb/comp_cast_type.csv' csv"
sudo -u postgres psql -d imdb -c "\copy company_name to '/tmp/imdb/company_name.csv' csv"
sudo -u postgres psql -d imdb -c "\copy company_type to '/tmp/imdb/company_type.csv' csv"
sudo -u postgres psql -d imdb -c "\copy complete_cast to '/tmp/imdb/complete_cast.csv' csv"
sudo -u postgres psql -d imdb -c "\copy info_type to '/tmp/imdb/info_type.csv' csv"
sudo -u postgres psql -d imdb -c "\copy keyword to '/tmp/imdb/keyword.csv' csv"
sudo -u postgres psql -d imdb -c "\copy kind_type to '/tmp/imdb/kind_type.csv' csv"
sudo -u postgres psql -d imdb -c "\copy link_type to '/tmp/imdb/link_type.csv' csv"
sudo -u postgres psql -d imdb -c "\copy movie_companies to '/tmp/imdb/movie_companies.csv' csv"
sudo -u postgres psql -d imdb -c "\copy movie_info to '/tmp/imdb/movie_info.csv' csv"
sudo -u postgres psql -d imdb -c "\copy movie_info_idx to '/tmp/imdb/movie_info_idx.csv' csv"
sudo -u postgres psql -d imdb -c "\copy movie_keyword to '/tmp/imdb/movie_keyword.csv' csv"
sudo -u postgres psql -d imdb -c "\copy movie_link to '/tmp/imdb/movie_link.csv' csv"
sudo -u postgres psql -d imdb -c "\copy name to '/tmp/imdb/name.csv' csv"
sudo -u postgres psql -d imdb -c "\copy person_info to '/tmp/imdb/person_info.csv' csv"
sudo -u postgres psql -d imdb -c "\copy role_type to '/tmp/imdb/role_type.csv' csv"
sudo -u postgres psql -d imdb -c "\copy title to '/tmp/imdb/title.csv' csv"
