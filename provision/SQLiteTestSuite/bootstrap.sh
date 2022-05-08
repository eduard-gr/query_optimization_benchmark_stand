##sozdanie generatora
createdb sqlite
sudo apt install unixodbc-dev
sudo apt install odbc-postgresql

git clone https://github.com/bottaio/sqllogictest.git

/etc/odbcinst.ini
[PostgreSQL ANSI]
Description=PostgreSQL ODBC driver (ANSI version)
Driver=psqlodbca.so
Setup=libodbcpsqlS.so
Debug=0
CommLog=1
UsageCount=1

[PostgreSQL Unicode]
Description=PostgreSQL ODBC driver (Unicode version)
Driver=psqlodbcw.so
Setup=libodbcpsqlS.so
Debug=0
CommLog=1
UsageCount=1

/etc/odbc.ini
[sqlite1]
Description         = Test connect
Driver              = PostgreSQL Unicode
Database            = sqlite
Servername          = 127.0.0.1
UserName            = postgres
Password            = postgres
Port                = 5432
Protocol            = 14
ReadOnly            = No
RowVersioning       = No
ShowSystemTables    = No
ConnSettings        =


ALTER DATABASE slt RENAME TO sqlite1;


sudo apt install tcl libsqlite3-tcl libpgtcl postgresql-pltcl-14

##zagruzka gotovoj bazi
createdb sqlite
pg_restore -d sqlite sqlite.dump

psql -d postgres -c "CREATE ROLE postgres SUPERUSER CREATEDB CREATEROLE INHERIT LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'postgres'; "