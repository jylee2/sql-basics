CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255),
  price INT,
  PRIMARY KEY(id)
);

CREATE TABLE orders(
  id INT NOT NULL AUTO_INCREMENT,
  order_number INT,
  product_id INT,
  customer_id INT,
  order_date DATETIME default CURRENT_TIMESTAMP,
  PRIMARY KEY(id),
  FOREIGN KEY(customer_id) REFERENCES customers(id),
  FOREIGN KEY(product_id) REFERENCES products(id)
);

/* FOREIGN KEY: won't let us delete certain records that are needed for other records */

/* JOINS combine rows from 2 or more tables, based on a common field */
SELECT customers.first_name, customers.last_name, orders.order_number
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id
ORDER BY customers.last_name;

SELECT customers.first_name, customers.last_name, orders.order_number, orders.order_date
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
ORDER BY customers.last_name;

SELECT orders.order_number, customers.first_name, customers.last_name
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.id
ORDER BY orders.order_number;

SELECT orders.order_number, customers.first_name, customers.last_name, products.name
FROM orders
INNER JOIN products
ON orders.product_id = products.id
INNER JOIN customers
ON orders.customer_id = customers.id
ORDER BY orders.order_number;