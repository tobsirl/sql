-- Exercise 1 - What's a good use case for CHAR?
CREATE TABLE customer
(
  postcode CHAR(5),
  name VARCHAR(10)
);

-- Exercise 2 - Fill in the blanks
CREATE TABLE inventory
(
  item_name VARCHAR(25),
  price DECIMAL(8,2),
  quantity INT
);