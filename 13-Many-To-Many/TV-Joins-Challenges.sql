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