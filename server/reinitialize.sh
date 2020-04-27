
cd server
rm -rf ./data/mysql/*
rm -rf ./binlog/*
tmpdir="`cd temp;pwd`"
./mysqld --defaults-file=my.cnf --tmpdir=${tmpdir} --explicit_defaults_for_timestamp --log_syslog=0 --initialize-insecure
./mysqld --defaults-file=my.cnf --tmpdir=${tmpdir} --explicit_defaults_for_timestamp --log_syslog=0 --console
