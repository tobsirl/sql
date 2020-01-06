-- Using DISTINCT
SELECT author_lname
FROM books;

SELECT DISTINCT author_lname
FROM books;

SELECT author_fname, author_lname
FROM books;

SELECT DISTINCT CONCAT(author_fname,' ', author_lname)
FROM books;

SELECT DISTINCT author_fname, author_lname
FROM books;

-- Using ORDER BY
SELECT author_lname
FROM books;

SELECT author_lname
FROM books
ORDER BY author_lname;

SELECT title
FROM books;

SELECT title
FROM books
ORDER BY title;
SELECT author_lname
FROM books
ORDER BY author_lname DESC;

SELECT released_year
FROM books;

SELECT released_year
FROM books
ORDER BY released_year;

SELECT released_year
FROM books
ORDER BY released_year DESC;

SELECT released_year
FROM books
ORDER BY released_year ASC;

SELECT title, released_year, pages
FROM books
ORDER BY released_year;

SELECT title, pages
FROM books
ORDER BY released_year;

SELECT title, author_fname, author_lname
FROM books
ORDER BY 2;

SELECT title, author_fname, author_lname
FROM books
ORDER BY 3;

SELECT title, author_fname, author_lname
FROM books
ORDER BY 1;

SELECT title, author_fname, author_lname
FROM books
ORDER BY 1 DESC;

SELECT author_lname, title
FROM books
ORDER BY 2;

SELECT author_fname, author_lname
FROM books
ORDER BY author_lname, author_fname;

-- Using LIMIT
SELECT title
FROM books LIMIT
3;

SELECT title
FROM books LIMIT
1;

SELECT title
FROM books LIMIT
10;

SELECT *
FROM books LIMIT
1;

SELECT title, released_year
FROM books
ORDER BY released_year DESC LIMIT 5;
 
SELECT title
, released_year FROM books 
ORDER BY released_year DESC LIMIT 1;

SELECT title, released_year
FROM books
ORDER BY released_year DESC LIMIT 14;
 
SELECT title
, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;

SELECT title, released_year
FROM books
ORDER BY released_year DESC LIMIT 0,3;
 
SELECT title
, released_year FROM books 
ORDER BY released_year DESC LIMIT 1,3;

SELECT title, released_year
FROM books
ORDER BY released_year DESC LIMIT 10,1;
 
SELECT * FROM tbl
LIMIT 95,18446744073709551615;

SELECT title
FROM books LIMIT
5;

SELECT title
FROM books LIMIT
5, 123219476457;

SELECT title
FROM books LIMIT
5, 50;