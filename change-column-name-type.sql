USE test;
-- How to change column's name

-- ALTER TABLE <table name>

-- CHANGE <current column name> <new column name> <data type>;

-- ALTER TABLE <table name>

- -- RENAME COLUMN [current column name] to [new column name];

DESCRIBE pets;
ALTER TABLE pets
CHANGE name animal_name varchar(20);

-- ALTER TABLE pets
-- RENAME COLUMN animal_name TO name;


 -- How to change column's data type

-- ALTER TABLE <table name>
-- CHANGE COLUMN <current column name> <new column name> <data type>;

-- ALTER TABLE <table name>
-- MODIFY COLUMN <column name> <data type>;

DESCRIBE addresses;

ALTER TABLE addresses
CHANGE COLUMN city city VARCHAR(40);


