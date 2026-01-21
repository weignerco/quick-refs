# install postgresql client for debian based systems
sudo apt-get update
sudo apt-get install -y postgresql-client

# install postgresql client for redhat based systems
sudo yum install -y postgresql

# connect to a postgresql database
# replace <db_host>, <db_port>, <db_user>, and <db_name> with actual values
# default port for postgresql is 5432
psql -h <db_host_ip> -p <db_port> -U <db_user/db_admin> -d <db_name> # default db_name is postgres