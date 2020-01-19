-- Exercise 1
SELECT title, rating
FROM series
INNER JOIN reviews ON reviews.series_id = series.id
ORDER BY rating DESC;