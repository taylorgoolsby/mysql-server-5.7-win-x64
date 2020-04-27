    
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
temp_dir="$dir_path/temp"
$dir_path/mysqld --defaults-file=$dir_path/my.cnf --tmpdir=$temp_dir --explicit_defaults_for_timestamp --log_syslog=0 --console

