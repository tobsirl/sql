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