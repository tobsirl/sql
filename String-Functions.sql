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

-- Examples using REPLACE
SELECT REPLACE('Hello World', 'Hell', '%$#@');

SELECT REPLACE('Hello World', 'l', '7');

SELECT REPLACE('Hello World', 'o', '0');

SELECT REPLACE('HellO World', 'o', '*');

SELECT
  REPLACE('cheese bread coffee milk', ' ', ' and ');

SELECT REPLACE(title, 'e ', '3')
FROM books;

-- SELECT
--    CONCAT
--    (
--        SUBSTRING(title, 1, 10),
--        '...'
--    ) AS 'short title'
-- FROM books;

SELECT
  SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
FROM books;

SELECT
  SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;

-- Using REVERSE

SELECT REVERSE('Hello World');
 
SELECT REVERSE('meow meow');
 
SELECT REVERSE(author_fname) FROM books;
 
SELECT CONCAT('woof', REVERSE('woof'));
 
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;

-- Using CHAR_LENGTH
SELECT CHAR_LENGTH('Hello World');
 
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
 
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;