-- Exercise 1
SELECT title, rating
FROM series
  INNER JOIN reviews ON reviews.series_id = series.id
ORDER BY rating DESC;

-- Exercise 2
SELECT title,
  AVG(rating) AS avg_rating
FROM series
  INNER JOIN reviews ON reviews.series_id = series.id
GROUP BY series_id
ORDER BY avg_rating;

-- Exercise 3
SELECT first_name, last_name, rating
FROM reviewers
  INNER JOIN reviews ON reviewers.id = reviews.reviewer_id;

-- Exercise 4
SELECT title AS unreviewed_series
FROM series
  LEFT JOIN reviews
  ON series.id = reviews.series_id
WHERE rating IS NULL;

-- Exercise 5 Genre Average Ratings Using ROUND
SELECT genre,
  ROUND(AVG(rating), 2) AS avg_rating
FROM series
  JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

-- Exercise 6 - Reviewer Stats
SELECT first_name,
  last_name,
  COUNT(reviewer_id) AS COUNT,
  IFNULL(MIN(rating), 0) AS MIN,
  IFNULL(MAX(rating), 0) AS MAX,
  IFNULL(AVG(rating), 0) AS AVG,
  CASE 
        WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
FROM reviewers
  LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewer_id;

-- Solution using an IF statement
SELECT first_name,
  last_name,
  COUNT(reviewer_id) AS COUNT,
  IFNULL(MIN(rating), 0) AS MIN,
  IFNULL(MAX(rating), 0) AS MAX,
  IFNULL(AVG(rating), 0) AS AVG, 
IF(COUNT(rating) >= 1, 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
  LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewer_id;

-- Reviewer Stats With POWER USERS 
SELECT first_name,
  last_name,
  Count(rating)                    AS COUNT,
  Ifnull(Min(rating), 0)           AS MIN,
  Ifnull(Max(rating), 0)           AS MAX,
  Round(Ifnull(Avg(rating), 0), 2) AS AVG,
  CASE 
         WHEN Count(rating) >= 10 THEN 'POWER USER' 
         WHEN Count(rating) > 0 THEN 'ACTIVE' 
         ELSE 'INACTIVE' 
       end                              AS STATUS
FROM reviewers
  LEFT JOIN reviews
  ON reviewers.id = reviews.reviewer_id
GROUP  BY reviewers.id;

-- Exercise 7 - 3 tables
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviewers
  INNER JOIN reviews ON reviewers.id = reviews.reviewer_id
  INNER JOIN series ON series.id = reviews.series_id
ORDER BY title;