#!/bin/bash
source .env
apt update && apt install mysql-server -y
mysql -u root <<EOF
CREATE DATABASE $DB_NAME;
CREATE USER '$DB_USER'@'%' IDENTIFIED BY $DB_PASSWORD;
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';
FLUSH PRIVILEGES;
EOF
# Permitir conexiones externas
sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
systemctl restart mysql
