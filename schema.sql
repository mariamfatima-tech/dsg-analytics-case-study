-- 1. Create Calendar Table using the below SQL script
CREATE TABLE calendar (
    date DATE PRIMARY KEY,
    year INT,
    month INT,
    month_name VARCHAR(20),
    quarter VARCHAR(20)
);

-- 2. Create Customers Table using the below SQL script
CREATE TABLE customers (
    customerid VARCHAR(50) PRIMARY KEY,
    customername VARCHAR(100),
    segment VARCHAR(50),
    signupdate DATE
);

-- 3. Create Products Table using the below SQL script
CREATE TABLE products (
    productid VARCHAR(50) PRIMARY KEY,
    productname VARCHAR(100),
    category VARCHAR(50),
    subcategory VARCHAR(50)
);

-- 4. Create Sales Table using the below SQL script
CREATE TABLE sales (
    orderid VARCHAR(50),
    orderdate DATE,
    customerid VARCHAR(50),
    productid VARCHAR(50),
    region VARCHAR(50),
    quantity INT,
    unitprice DECIMAL(10,2),
    discount DECIMAL(5,2),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (customerid) REFERENCES customers(customerid),
    FOREIGN KEY (productid) REFERENCES products(productid),
    FOREIGN KEY (orderdate) REFERENCES calendar(date)
);
