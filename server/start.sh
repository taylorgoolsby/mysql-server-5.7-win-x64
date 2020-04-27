    
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
echo $dir_path
temp_dir="$dir_path/temp"
echo $temp_dir
./mysqld --defaults-file=my.cnf --tmpdir=$temp_dir --explicit_defaults_for_timestamp --log_syslog=0 --console

