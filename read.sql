SELECT * FROM customers ORDER BY last_name ASC;

SELECT first_name, last_name FROM customers WHERE id = 2;

SELECT DISTINCT state FROM customers;

SELECT * FROM customers WHERE age < 30;

SELECT * FROM customers
WHERE age
BETWEEN 22 AND 40;

SELECT * FROM customers
WHERE city
LIKE '%n'; /* Ends with n.*/

SELECT * FROM customers
WHERE city
NOT LIKE '%n%'; /* Don't have the letter n.*/

SELECT * FROM customers
WHERE state
IN ('New York', 'New Hampshire');

SELECT first_name AS 'First Name', last_name AS 'Last Name' FROM customers;

SELECT CONCAT(first_name, ' ', last_name) AS 'Name', CONCAT(address, ' ', city, ' ', state) AS 'Address' FROM customers;

SELECT o.id, o.order_date, c.first_name, c.last_name
FROM customers AS c, orders AS o;

/* Aggregate Functions */

SELECT AVG(age) FROM customers;
SELECT COUNT(age) FROM customers;
SELECT MAX(age) FROM customers;
SELECT SUM(age) FROM customers;

SELECT age, COUNT(age)
FROM customers
WHERE age > 30
GROUP BY age
HAVING COUNT(age) >= 2; /* Age that appears 2 or more times */

SELECT LCASE(first_name), UCASE(last_name) FROM customers; /* Set first_name to lowercase */