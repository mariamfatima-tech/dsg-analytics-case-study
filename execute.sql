.read create_tables.sql

.mode csv
.import data/sales.csv sales
.import data/customer.csv customer
.import data/product.csv product
.import data/calendar.csv calendar

.read queries.sql
