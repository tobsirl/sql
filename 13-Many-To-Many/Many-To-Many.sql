-- Create tables
CREATE TABLE reviewers
(
  id INT
  AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR
  (100),
  last_name VARCHAR
  (100)
);

  CREATE TABLE series
  (
    id INT
    AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR
    (100),
  released_year YEAR
    (4),
  genre VARCHAR
    (100)
);