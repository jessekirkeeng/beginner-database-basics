CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INTEGER,
  height INTEGER,
  city VARCHAR(25),
  favorite_color VARCHAR(15)
);

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Jesse', 28, 191, 'Prescott', 'Blue'),
('Mike', 58, 190, 'La Jolla', 'Orange'),
('Lana', 57, 173, 'Modesto', 'Yellow'),
('Tyler', 33, 185, 'Atlanta', 'Greeen'),
('Jake', 37, 182, 'Walnut Creek', 'Purple');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 AND > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color != 'Red' OR 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR 'Green';

SELECT * FROM person
WHERE favorite_color IN = ('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN = ('Yellow', 'Purple');

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(50),
  product_price FLOAT,
  quantity INTEGER
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'bag', 19.5, 4),
(2, 'soap', 2, 5),
(3, 'shirt', 31, 2),
(4, 'oven', 125, 3),
(5, 'car', 40000, 1);

SELECT * FROM orders

SELECT sum(quantity)FROM orders;

SELECT sum(product_price * quantity)FROM orders;

SELECT sum(product_price * quantity)FROM orders
WHERE person_id = 0;

INSERT INTO artist
VALUES 
('nas'),
('all that remains'),
('incubus');

SELECT * FROM artist
ORDER BY name
DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name
ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'BLACK%';

SELECT * FROM artist 
WHERE name LIKE '%BLACK%';

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MIN(birthdate) FROM employee;

SELECT MAX(birthdate) FROM employee;

SELECT * FROM employee
WHERE reports_to = 2

SELECT count(*) FROM employee
WHERE city = 'Lethbridge';

SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT * FROM invoice
WHERE billing_state IN = ('CA', 'AZ', 'TX');

SELECT avg(total) FROM invoice;

SELECT sum(total) FROM invoice;