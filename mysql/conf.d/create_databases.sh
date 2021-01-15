#!/bin/bash
echo "[create_databses.sh] Initializing databases..."
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS production_${DATABASE_SUFFIX} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci; GRANT ALL ON production_${DATABASE_SUFFIX}.* TO '${MYSQL_USER}';"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS staging_${DATABASE_SUFFIX} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci; GRANT ALL ON staging_${DATABASE_SUFFIX}.* TO '${MYSQL_USER}';"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS development_${DATABASE_SUFFIX} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci; GRANT ALL ON development_${DATABASE_SUFFIX}.* TO '${MYSQL_USER}';"
echo "[create_databses.sh] Finished initializing databases."