-- Exercise 1 - Evaluate the following
SELECT 10
!= 10;
-- false

SELECT 15
> 14 && 99 - 5 <= 94;
-- true

SELECT 1
IN
(5,3) || 9 BETWEEN 8 AND 10;
--true

-- Exercise 2 - Select All Books Written Before 1980 (non inclusive)
SELECT title, released_year
FROM books
WHERE released_year < 1980;

-- Exercise 3 - Select All Books Written By Eggers Or Chabon
SELECT title, author_lname, released_year
FROM books
WHERE author_lname='Eggers' OR author_lname='Chabon';

-- Exercise 4 - Select All Books Written By Lahiri, Published after 2000
SELECT title, author_lname, released_year
FROM books
WHERE author_lname='Lahiri' AND released_year > 2000;

-- Exercise 5 - Select All books with page counts between 100 and 200
SELECT title, author_lname, released_year, pages
FROM books
WHERE pages BETWEEN 100 AND 200;

-- Exercise 6 - Select all books where author_lname  starts with a 'C' or an 'S''
SELECT title, author_lname, released_year
FROM books
WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';