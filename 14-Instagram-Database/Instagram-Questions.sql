-- Exercise 1
-- We want to reward our users who have been around the longest.  
-- Find the 5 oldest users.
SELECT *
FROM users
ORDER BY created_at
LIMIT 5;

-- -- Exercise 2 - Most Popular Registration Date
SELECT DATE_FORMAT
(created_at, '%W') AS DAY,
COUNT
(DAYOFWEEK
(created_at)) AS COUNT
FROM users
GROUP BY DATE_FORMAT
(created_at, '%W')
ORDER BY COUNT DESC;

SELECT
  DAYNAME(created_at) AS day,
  COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;
