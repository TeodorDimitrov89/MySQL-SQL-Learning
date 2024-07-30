## Add and remove foreign key

- -- How to add foreign key to a table

-- ALTER TABLE <table name>
-- ADD CONSTRAINT <constraint name>
-- FOREIGN KEY (<column name>) REFERENCES <table name>(<column name>)

- -- How to remove foreign key from a table

-- ALTER TABLE <table name>
-- DROP FOREIGN KEY <constraint name>,
-- DROP INDEX <constraint name>;

USE test;

DESCRIBE addresses;
DESCRIBE people;

ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id)
REFERENCES addresses(id); 


ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress,
DROP INDEX FK_PeopleAddress;

-- How to create unique constraint to a column

-- ALTER TABLE <table name>
-- ADD CONSTRAINT <constraint name> UNIQUE (<column name>);

-- How to remove unique constraint from a column

-- ALTER TABLE <table name>
-- DROP INDEX <constraint name>;

DESCRIBE pets;

ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);

ALTER TABLE pets
DROP INDEX u_species;
