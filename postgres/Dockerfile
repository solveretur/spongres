FROM postgres:14-alpine
COPY init-database.sql /docker-entrypoint-initdb.d/init-database.sql
COPY init-script.sh /docker-entrypoint-initdb.d/init-script.sh
