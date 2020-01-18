-- Working With Foreign Keys
-- Creating the customers and orders tables
CREATE TABLE customers
(
  id INT
  AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR
  (100),
    last_name VARCHAR
  (100),
    email VARCHAR
  (100)
);
  CREATE TABLE orders
  (
    id INT
    AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL
    (8,2),
    customer_id INT,
    FOREIGN KEY
    (customer_id) REFERENCES customers
    (id)
);

    -- Inserting some customers and orders
    INSERT INTO customers
      (first_name, last_name, email)
    VALUES
      ('Boy', 'George', 'george@gmail.com'),
      ('George', 'Michael', 'gm@gmail.com'),
      ('David', 'Bowie', 'david@gmail.com'),
      ('Blue', 'Steele', 'blue@gmail.com'),
      ('Bette', 'Davis', 'bette@aol.com');

    INSERT INTO orders
      (order_date, amount, customer_id)
    VALUES
      ('2016/02/10', 99.99, 1),
      ('2017/11/11', 35.50, 1),
      ('2014/12/12', 800.67, 2),
      ('2015/01/03', 12.50, 2),
      ('1999/04/11', 450.25, 5);

    -- Cross Joins
    -- Finding Orders Placed By George: 2 Step Process
    SELECT id
    FROM customers
    WHERE last_name='George';
    SELECT *
    FROM orders
    WHERE customer_id = 1;

    -- Finding Orders Placed By George: Using a subquery
    SELECT *
    FROM orders
    WHERE customer_id =
    (
        SELECT id
    FROM customers
    WHERE last_name='George'
    );

    -- Cross Join Craziness
    SELECT *
    FROM customers, orders;

    -- Inner Joins
    -- IMPLICIT INNER JOIN
    SELECT *
    FROM customers, orders
    WHERE customers.id = orders.customer_id;

    -- IMPLICIT INNER JOIN
    SELECT first_name, last_name, order_date, amount
    FROM customers, orders
    WHERE customers.id = orders.customer_id;

    -- EXPLICIT INNER JOINS
    SELECT *
    FROM customers
      JOIN orders
      ON customers.id = orders.customer_id;

    SELECT first_name, last_name, order_date, amount
    FROM customers
      JOIN orders
      ON customers.id = orders.customer_id;

    SELECT *
    FROM orders
      JOIN customers
      ON customers.id = orders.customer_id;

    -- ARBITRARY JOIN - meaningless, but still possible 
    SELECT *
    FROM customers
      JOIN orders ON customers.id = orders.id;

    -- Left Joins
    -- Getting Fancier (Inner Joins Still)
    SELECT first_name, last_name, order_date, amount
    FROM customers
      JOIN orders
      ON customers.id = orders.customer_id
    ORDER BY order_date;
    SELECT
      first_name,
      last_name,
      SUM(amount) AS total_spent
    FROM customers
      JOIN orders
      ON customers.id = orders.customer_id
    GROUP BY orders.customer_id
    ORDER BY total_spent DESC;

    -- LEFT JOINS
    SELECT *
    FROM customers
      LEFT JOIN orders
      ON customers.id = orders.customer_id;
    SELECT first_name, last_name, order_date, amount
    FROM customers
      LEFT JOIN orders
      ON customers.id = orders.customer_id;
    SELECT
      first_name,
      last_name,
      IFNULL(SUM(amount), 0) AS total_spent
    FROM customers
      LEFT JOIN orders
      ON customers.id = orders.customer_id
    GROUP BY customers.id
    ORDER BY total_spent;

    -- Right Joins Part 1
    -- OUR FIRST RIGHT JOIN (seems the same as a left join?)
    SELECT *
    FROM customers
      RIGHT JOIN orders
      ON customers.id = orders.customer_id;

    -- ALTERING OUR SCHEMA to allow for a better example (optional)
    CREATE TABLE customers
    (
      id INT
      AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR
      (100),
    last_name VARCHAR
      (100),
    email VARCHAR
      (100)
);
      CREATE TABLE orders
      (
        id INT
        AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL
        (8,2),
    customer_id INT
);

        -- INSERTING NEW DATA (no longer bound by foreign key constraint)
        INSERT INTO customers
          (first_name, last_name, email)
        VALUES
          ('Boy', 'George', 'george@gmail.com'),
          ('George', 'Michael', 'gm@gmail.com'),
          ('David', 'Bowie', 'david@gmail.com'),
          ('Blue', 'Steele', 'blue@gmail.com'),
          ('Bette', 'Davis', 'bette@aol.com')
        INSERT INTO orders
          (order_date, amount, customer_id)
        VALUES
          ('
        2016/02/10', 99.99, 1),
          ('2017/11/11', 35.50, 1),
          ('2014/12/12', 800.67, 2),
          ('2015/01/03', 12.50, 2),
          ('1999/04/11', 450.25, 
        INSERT INTO orders
          (order_date, amount, customer_id)
        VALUES
          ('2017/11/05', 23.45, 45),
          (CURDATE(), 777.77, 109);

        --A MORE COMPLEX RIGHT JOIN



        SELECT
          IFNULL(first_name,'
        MISSING') AS first,
          IFNULL(last_name,'USER') as last,
          order_date,
          amount,
          SUM(amount)
        FROM customers
          RIGHT JOIN orders
          ON customers.id = orders.customer_id
        GROUP BY first_name, last_name;
        -- WORKING WITH ON DELETE CASCADE

        CREATE TABLE customers
        (
          id INT
          AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR
          (100),
    last_name VARCHAR
          (100),
    email VARCHAR
          (100)
);

          CREATE TABLE orders
          (
            id INT
            AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL
            (8,2),
    customer_id INT,
    FOREIGN KEY
            (customer_id) 
        REFERENCES customers
            (id)
        ON
            DELETE CASCADE
);


            INSERT INTO customers
              (first_name, last_name, email)
            VALUES
              ('Boy', 'George', 'george@gmail.com'),
              ('George', 'Michael', 'gm@gmail.com'),
              ('David', 'Bowie', 'david@gmail.com'),
              ('Blue', 'Steele', 'blue@gmail.com'),
              ('Bette
        ', 'Davis', 'bette@aol.com');

            INSERT INTO orders
              (order_date, amount, customer_id)
            VALUES
              ('2016/02/10', 99.99, 1),
              ('2017/11/11', 35.50, 1),
              ('2014/12/12', 800.67, 2),
              ('2015/01/03', 12.50, 2),
              ('1999/04/11', 450.25, 5);

-- Right and Left Joins FAQ
SELECT *
FROM customers
  LEFT JOIN orders
  ON customers.id = orders.customer_id;
SELECT *
FROM orders
  RIGHT JOIN customers
  ON customers.id = orders.customer_id;
SELECT *
FROM orders
  LEFT JOIN customers
  ON customers.id = orders.customer_id;
SELECT *
FROM customers
  RIGHT JOIN orders
  ON customers.id = orders.customer_id;