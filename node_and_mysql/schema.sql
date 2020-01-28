CREATE TABLE users
(
  email VARCHAR(255) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users
  (email)
VALUES('Katie34@yahoo.com'),
  ('Tunde@gmail.com');

-- Exercise 1 - Find Earliest Date A User Joined
SELECT DATE_FORMAT(created_at,  "%M %D %Y") AS earliest_date
FROM users
ORDER BY earliest_date
LIMIT 1;

SELECT DATE_FORMAT
(MIN
(created_at),  "%M %D %Y") AS earliest_date
FROM users;

-- Exercise 2 - Find Email Of The First (Earliest)User
SELECT email, created_at
FROM users
WHERE created_at = (
SELECT created_at
FROM users
ORDER BY created_at 
LIMIT 1);

SELECT email
, created_at
FROM users
WHERE created_at =
(
SELECT MIN(created_at)
FROM users);

-- Exercise 3 - Users According To The Month They Joined
SELECT DATE_FORMAT(created_at, "%M") AS month, COUNT(*) AS count
FROM users
GROUP BY month
ORDER BY count DESC;

-- Exercise 4 - Count Number of Users With Yahoo Emails
SELECT COUNT(*) AS yahoo_users
FROM users
WHERE email LIKE '%@yahoo.com%';

-- Exercise 5 - Calculate Total Number of Users for Each Email Host
SELECT
  CASE
        WHEN email LIKE '%@yahoo.com%' THEN 'yahoo'
        WHEN email LIKE '%@gmail.com%' THEN 'gmail'
        WHEN email LIKE '%@hotmail.com%' THEN 'hotmail'
        ELSE 'other'
    END as provider,
  COUNT(*) AS total_users
FROM users
GROUP BY provider;