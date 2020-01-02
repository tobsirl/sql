-- After using Sqlectron to execute the sql 
DESC books;

SELECT *
FROM books;

-- Working with CONCAT
SELECT author_fname, author_lname
FROM books;

CONCAT
(x,y,z) // from slides
 
CONCAT
(column, anotherColumn) // from slides
 
CONCAT
(author_fname, author_lname)
 
CONCAT
(column, 'text', anotherColumn, 'more text')
 
CONCAT
(author_fname, ' ', author_lname)
 
CONCAT
(author_fname, author_lname); // invalid syntax

SELECT CONCAT('Hello', 'World');

SELECT CONCAT('Hello', '...', 'World');

SELECT
  CONCAT(author_fname, ' ', author_lname)
FROM books;

SELECT
  CONCAT(author_fname, ' ', author_lname)
  AS 'full name'
FROM books;

SELECT author_fname AS first, author_lname AS last,
  CONCAT(author_fname, ' ', author_lname)
AS full
FROM books;

SELECT author_fname AS first, author_lname AS last,
  CONCAT(author_fname, ', ', author_lname)
AS full
FROM books;

SELECT CONCAT(title, '-', author_fname, '-', author_lname)
FROM books;

SELECT
  CONCAT_WS(' - ', title, author_fname, author_lname)
FROM books;

-- Using SUBSTRING
SELECT SUBSTRING('Hello World', 1, 4);

SELECT SUBSTRING('Hello World', 7);

SELECT SUBSTRING('Hello World', 3, 8);

SELECT SUBSTRING('Hello World', 3);

SELECT SUBSTRING('Hello World', -3);

SELECT SUBSTRING('Hello World', -7);

SELECT title
FROM books;

SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);

SELECT SUBSTRING(title, 1, 10)
FROM books;

SELECT SUBSTRING(title, 1, 10) AS 'short title'
FROM books;

SELECT SUBSTR(title, 1, 10) AS 'short title'
FROM books;

SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    )
FROM books;

SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;