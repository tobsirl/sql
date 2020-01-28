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