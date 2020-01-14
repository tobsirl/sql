-- Not Equal
SELECT title
FROM books
WHERE released_year = 2017;

SELECT title
FROM books
WHERE released_year != 2017;

SELECT title, author_lname
FROM books;

SELECT title, author_lname
FROM books
WHERE author_lname = 'Harris';

SELECT title, author_lname
FROM books
WHERE author_lname != 'Harris';

-- Not Like
SELECT title
FROM books
WHERE title LIKE 'W';

SELECT title
FROM books
WHERE title LIKE 'W%';

SELECT title
FROM books
WHERE title LIKE '%W%';

SELECT title
FROM books
WHERE title LIKE 'W%';

SELECT title
FROM books
WHERE title NOT LIKE 'W%';

-- Greater Than
SELECT title, released_year
FROM books
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year > 2000
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year >= 2000
ORDER BY released_year;

SELECT title, stock_quantity
FROM books;

SELECT title, stock_quantity
FROM books
WHERE stock_quantity >= 100;

SELECT 99
> 1;

SELECT 99
> 567;
 
100 > 5
-- true
 
-15 > 15
-- false
 
9 > -10
-- true
 
1 > 1
-- false
 
'a' > 'b'
-- false
 
'A' > 'a'
-- false
 
'A' >=  'a'
-- true

SELECT title, author_lname
FROM books
WHERE author_lname = 'Eggers';

SELECT title, author_lname
FROM books
WHERE author_lname = 'eggers';

SELECT title, author_lname
FROM books
WHERE author_lname = 'eGGers';