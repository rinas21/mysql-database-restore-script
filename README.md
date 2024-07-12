# MySQL Database Restore Script

This script automates the process of dropping an existing MySQL database (if it exists), recreating it, and restoring it from a specified backup SQL file.

## Prerequisites

- MySQL server installed and running.
- Access credentials for MySQL (DB_HOST, DB_PORT, DB_USER, DB_PASS).
- Backup SQL file (`DUMP_FILE`) containing the database dump.

## Usage

1. Update the MySQL credentials and backup file path in `restore_database.sh`.
2. Execute the script:

   ```bash
   ./restore_database.sh

