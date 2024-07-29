-- How to add and remove columns from a Table;
USE coffee_shop;

DESCRIBE products;
-- ADD Column to table
ALTER TABLE products
ADD COLUMN coffee_origin VARCHAR(30);

-- Remove Column from a table

ALTER TABLE products
DROP COLUMN coffee_origin;

-- How to delete tables from a Database

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

-- TRUNCATE TABLE
INSERT INTO test (name, age) VALUES('Ben', 19), ('Simon', 28), ('Claire', 23);

SELECT * FROM test;