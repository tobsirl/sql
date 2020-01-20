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