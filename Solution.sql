CREATE TABLE employees (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    middle_name VARCHAR(25),
    age INT NOT NULL,
    current_status VARCHAR(25) NOT NULL DEFAULT 'employed'
);