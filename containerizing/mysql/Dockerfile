FROM mysql:5.7.25

#This variable is mandatory and specifies the password that will be set for the MySQL root superuser account. 
ENV MYSQL_ROOT_PASSWORD="vpropass"

#This variable is optional and allows you to specify the name of a database to be created on image startup.
ENV MYSQL_DATABASE="accounts"

# populate mysql services by mounting a SQL dump in docker-entrypoint-initdb.d
# db_backup.sql contains DB data
# copying it from local to the container 
ADD db_backup.sql docker-entrypoint-initdb.d/db_backup.sql
