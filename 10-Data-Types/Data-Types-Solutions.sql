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

-- Exercise 3 - What's the difference between DATETIME and TIMESTAMP?
-- Both store date and time information 
-- DATETIME take twice as much space as TIMESTAMP
-- TIMESTAMP is mainly used for metadata

-- Exercise 4 - Print Out The Current Time
SELECT CURTIME();

-- Exercise 5 - Print Out The Current Date (but not time)
SELECT CURDATE();

-- Exercise 6 - Print Out The Current Day Of The Week (number)
SELECT DAYOFWEEK(CURDATE());

SELECT DAYOFWEEK(NOW());

-- Exercise 7 - Print Out The Current Day Of The Week (day name)
SELECT DATE_FORMAT(NOW(), '%W');

-- Exercise 8 - Print out the current day and time using this format
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

-- Exercise 9 - Print out the current day and time using this format
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%m');

-- Exercise 10 - Create a tweets table that stores
CREATE TABLE tweets
(
  content VARCHAR(140),
  username VARCHAR(20),
  created_at TIMESTAMP DEFAULT NOW()
);