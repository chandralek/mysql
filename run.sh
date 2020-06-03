#!/bin/bash

set -x

if [ -z ${MYSQL_DB_URL} -o -z "${MYSQL_ROOT_PASSWORD}" ]; then
    echo "DB URL OR  PASSWORD MISSING!"
    exit 1
fi

host ${MYSQL_DB_URL}
if [ $? -ne 0 ];
then
    echo "URL is not working"
    exit 1
fi

sleep 120
while true:
do
  echo "zzzz"
  nc -i 10 -z ${MYSQL_DB_URL} 3306
  echo "xxxx"
  if [ $? -ne 0 ];
  then
    echo "Port is not yet up"
    sleep 30
    continue
  fi
  mysql -u root -p${MYSQL_ROOT_PASSWORD} -h{MYSQL_DB_URL}< /tmp/ratings.sql
  mysql -u root -p${MYSQL_ROOT_PASSWORD} -h{MYSQL_DB_URL}< /tmp/shipping.sql
done
