.read create_tables.sql

.mode csv
.import raw_data/sales.csv sales
.import raw_data/customers.csv customer
.import raw_data/products.csv product
.import raw_data/calendar.csv calendar

.read queries.sql
