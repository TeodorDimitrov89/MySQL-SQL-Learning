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

## Add and remove primary key

- -- SQL to add a primary key to a table
  ALTER TABLE [table name]
  ADD PRIMARY KEY ([column name]);

- -- SQL to remove a primary key from a table
  ALTER TABLE [table name]
  DROP PRIMARY KEY;

## Add and remove foreign key

- -- How to add foreign key to a table

ALTER TABLE [name]
ADD CONSTRAINT [constraint name]
FOREIGN KEY ([column name]) REFERENCES [table name]([column name])

- -- How to remove foreign key from a table

ALTER TABLE [table name]
DROP FOREIGN KEY [constraint name],
DROP INDEX [constraint name];

## Add and remove unique constraint

- -- How to create unique constraint to a column

ALTER TABLE [table name]
ADD CONSTRAINT [constraint name] UNIQUE ([column name]);

- --How to remove unique constraint from a column

ALTER TABLE [table name]
DROP INDEX [constraint name];

## Change column's name

- -- How to change column's name

ALTER TABLE [table name]

- --CHANGE COLUMN [current column name] [new column name] [data type];

ALTER TABLE [table name]

- -- RENAME COLUMN [current column name] TO [new column name];

## Change column's data type

- -- How to change column's data type

ALTER TABLE [table name]
CHANGE COLUMN [current column name] [new column name] [data type];

ALTER TABLE [table name]
MODIFY COLUMN [column name] [data type];
