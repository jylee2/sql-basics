CREATE DATABASE test_db;

CREATE TABLE customers(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  state VARCHAR(255),
  zipcode VARCHAR(255),
  PRIMARY KEY(id)
);

INSERT INTO customers (first_name, last_name, email, address, city, state, zipcode) VALUES
('John', 'Doe', 'jdoe@gmail.com', '55 Main Street', 'Boston', 'Massachusetts', '01221'),
('Mike', 'Smith', 'msmith@gmail.com', '22 Birch Lane', 'Amesbury', 'Massachusetts', '01913');
