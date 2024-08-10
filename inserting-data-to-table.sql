USE coffee_shop;

SHOW TABLES;

INSERT INTO [table_name] ([column1],[column2],[column3],....[column_n])
VALUES (value1, value2, value3, ....value_n);

SELECT * from products;

INSERT INTO products (name, price, coffee_origin)
VALUES ('espresso', 2.60, 'Brazil');

INSERT INTO products (name, price, coffee_origin)
VALUES ('Macchiato', 3.00, 'Brazil'), ('Cappuccino', 4.50, 'Costa Rica');

INSERT INTO products (name, price, coffee_origin)
VALUES ('Latte', 3.50, 'Indonesia'), ('Americano', 3.00, 'Brazil'),
('Flat White', 3.50, 'Indonesia'),('Filter', 3.00, 'India');