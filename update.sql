UPDATE customers
SET email = 'new_email@gmail.com'
WHERE id = 3;

ALTER TABLE customers
ADD COLUMN test_col VARCHAR(255);

ALTER TABLE customers
MODIFY COLUMN test_col INT(11);

ALTER TABLE customers
ADD COLUMN age INT(2);