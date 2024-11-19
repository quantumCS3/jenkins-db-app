#!/bin/bash

# Database connection details
DB_USER="root"
DB_PASSWORD="Password123"
DB_HOST = '127.0.0.1'
DB_NAME = 'fruitdb'

# Define SQL queries
QUERY1="SELECT COUNT(*) FROM fruits;"
QUERY2="SELECT * FROM fruits LIMIT 5;"

# Execute the queries
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME -e "$QUERY1" > query_1_results.txt
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME -e "$QUERY2" > query_2_results.txt
