-- Exercise 1
SELECT title
FROM books
WHERE title LIKE '%stories%';

-- Exercise 2
SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;