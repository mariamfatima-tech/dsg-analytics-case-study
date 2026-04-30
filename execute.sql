.read create_tables.sql

.mode csv
.import raw_data/sales.csv sales
.import raw_data/customers.csv customers
.import raw_data/products.csv products
.import raw_data/calendar.csv calendars

.headers on
.mode column

.read queries.sql
