-- Exercise 1
SELECT title
FROM books
WHERE title LIKE '%stories%';

-- Exercise 2
SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- Exercise 3
SELECT CONCAT
(title,' - ',  released_year) AS 'summary' 
FROM books ORDER BY released_year DESC LIMIT 3;

-- Exercise 4
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';