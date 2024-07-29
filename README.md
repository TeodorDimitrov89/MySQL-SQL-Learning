# MySQL-SQL-Learning

Learning SQL with MySQL Workbench

## CREATE and show Databases and tables

- -- CREATE and show Databases and tables;
  SHOW DATABASES;
  CREATE DATABASE coffee_shop;
  USE coffee_shop;
  CREATE TABLE products(
  id INT auto_increment PRIMARY KEY,
  name VARCHAR(30),
  price DECIMAL(3,2)
  );

SHOW TABLES;

CREATE TABLE customers(
id INT auto_increment PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender ENUM('M','F'),
phone_number VARCHAR(11)
);

CREATE TABLE orders(
id INT auto_increment PRIMARY KEY,
product_id INT,
customer_id INT,
order_time DATETIME,
FOREIGN KEY (product_id) REFERENCES products(id),
FOREIGN KEY (customer_id) REFERENCES customers(id)
);

## CREATE and show Databases and tables

- -- How to add and remove columns from a Table;
  USE coffee_shop;

DESCRIBE products;
-- ADD Column to table
ALTER TABLE products
ADD COLUMN coffee_origin VARCHAR(30);

- -- Remove Column from a table

ALTER TABLE products
DROP COLUMN coffee_origin;

- -- How to delete tables from a Database

CREATE DATABASE example;

USE example;

CREATE TABLE test(
id INT auto_increment PRIMARY KEY,
name VARCHAR(30),
age INT
);

SHOW TABLES;

DESCRIBE test;
DROP TABLE test;

- -- TRUNCATE TABLE
  INSERT INTO test (name, age) VALUES('Ben', 19), ('Simon', 28), ('Claire', 23);

SELECT \* FROM test;
