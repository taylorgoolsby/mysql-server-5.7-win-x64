#!/usr/bin/env bash

rm -rf ./binlog/*
rm -rf ./data/mysql/*
tmpdir="`cd temp;pwd`"
./mysqld --defaults-file=my.cnf --tmpdir=${tmpdir} --explicit_defaults_for_timestamp --log_syslog=0 --initialize-insecure
