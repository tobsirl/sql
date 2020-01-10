-- Exercise 1 Print the number of books in the database
SELECT COUNT(*) AS 'Number of books'
FROM books;

-- Exercise 2 Print out how many books were released in each year
SELECT released_year AS Year, COUNT(released_year) AS 'Num of books released'
FROM books
GROUP BY released_year;