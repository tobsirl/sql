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
SELECT 
  CONCAT
(title,' - ',  released_year) 
AS 'summary' 
FROM books 
ORDER BY released_year DESC LIMIT 3;

-- Exercise 4
SELECT title, author_lname
FROM books
WHERE author_lname LIKE '% %';

-- Exercise 5
SELECT title, released_year, stock_quantity
FROM books
ORDER BY stock_quantity
LIMIT 3;

-- Exercise 6
SELECT title
, author_lname
FROM books
ORDER BY author_lname, title;

-- Exercise 7
SELECT UPPER(CONCAT('MY FAVORITE AUTHOR IS ', author_fname, ' ', author_lname,'!')) 
AS 'yell'
FROM books
ORDER BY author_lname;