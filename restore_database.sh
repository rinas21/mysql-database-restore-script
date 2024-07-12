#!/bin/bash

# MySQL credentials
DB_HOST="localhost"
DB_PORT="3306"
DB_USER="root"
DB_PASS="password"
DB_NAME="your_database_name"
DUMP_FILE="/path/to/your/database_dump.sql"

# Step 1: Drop the existing database if it exists
mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" -e "DROP DATABASE IF EXISTS $DB_NAME"

# Step 2: Create the database
mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" -e "CREATE DATABASE $DB_NAME"

# Step 3: Restore the database from backup
mysql -h"$DB_HOST" -P"$DB_PORT" -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$DUMP_FILE"

echo "Database dropped (if existed), recreated, and backup restored successfully."

