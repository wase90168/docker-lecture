#!/usr/bin/env bash

# Wait for database-server to come online...
while ! mysql -u root -h sysad-mysql -pX4d7vOyAljyz0wFYbpdOoeXQuHK1Ee -e ";" ; do
       sleep 1s;
done
sleep 1s;

# Initialize Database
mysql -u root -h sysad-mysql -pX4d7vOyAljyz0wFYbpdOoeXQuHK1Ee < /dockerfiles/mysql/initialize_db.sql

# Keeping container alive
supervisord
