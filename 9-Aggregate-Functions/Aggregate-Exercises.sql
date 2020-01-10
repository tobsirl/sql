-- Exercise 1 Print the number of books in the database
SELECT COUNT(*) AS 'Number of books'
FROM books;

-- Exercise 2 Print out how many books were released in each year
SELECT released_year AS Year, COUNT(released_year) AS 'Num of books released'
FROM books
GROUP BY released_year;

-- Exercise 3 Print out the total number of books in stock
SELECT SUM(stock_quantity) AS 'Total Number of books'
FROM books;

-- Exercise 4 Find the average released_year for each author
SELECT CONCAT(author_lname, ' ', author_fname) AS 'Name', AVG(released_year)
FROM books
GROUP BY author_lname, author_fname;