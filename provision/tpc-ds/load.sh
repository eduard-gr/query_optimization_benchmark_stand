for file in `ls *.dat`; do
  table=${file/.dat/}
  echo "Loading $table"
  sed 's/|$//' $file > /tmp/tpcds/clipped-$file
  psql -d tpcds -q -c "TRUNCATE $table"
  psql -d tpcds -c "\\copy $table FROM '/tmp/tpcds/clipped-$file' DELIMITER '|' CSV;"
done