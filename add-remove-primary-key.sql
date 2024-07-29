CREATE DATABASE test;
USE test;

CREATE TABLE addresses(
	id INT,
	house_number INT,
	city VARCHAR(30),
	postcode VARCHAR(7)
);

CREATE TABLE people (
	 id INT,
	 first_name VARCHAR(30),
	 last_name VARCHAR(30),
	 address_id INT
 );

CREATE TABLE pets(
	id INT,
	name VARCHAR(20),
	species VARCHAR(20),
	owner_id INT
);
SHOW TABLES;

-- SQL to add a primary key to a table
-- ALTER TABLE <table name>
-- ADD PRIMARY KEY (<column name>);

-- SQL to remove a primary key from a table
-- ALTER TABLE <table name>
-- DROP PRIMARY KEY

DESCRIBE addresses;
ALTER TABLE addresses
ADD PRIMARY KEY (id);

ALTER TABLE addresses
DROP PRIMARY KEY;

ALTER TABLE addresses
MODIFY id int;

DESCRIBE people;

ALTER TABLE people
ADD PRIMARY KEY (id);

