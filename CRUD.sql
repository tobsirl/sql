-- CREATE NEW DATA
INSERT INTO cats
  (name, age)
VALUES('Taco', 14);

-- create new cat table
CREATE TABLE cats
(
  cat_id INT NOT NULL
  AUTO_INCREMENT, 
     name   VARCHAR
  (100), 
     breed  VARCHAR
  (100), 
     age    INT, 
     PRIMARY KEY
  (cat_id) 
  );

  -- CREATE 7 cats
  INSERT INTO cats
    (name, breed, age)
  VALUES
    ('Ringo', 'Tabby', 4),
    ('Cindy', 'Maine Coon', 10),
    ('Dumbledore', 'Maine Coon', 11),
    ('Egg', 'Persian', 4),
    ('Misty', 'Tabby', 13),
    ('George Michael', 'Ragdoll', 9),
    ('Jackson', 'Sphynx', 7);

  -- READ Various Simple SELECT statements
  SELECT *
  FROM cats;

  SELECT name
  FROM cats;

  SELECT age
  FROM cats;

  SELECT cat_id
  FROM cats;

  SELECT name, age
  FROM cats;

  SELECT cat_id, name, age
  FROM cats;

  SELECT age, breed, name, cat_id
  FROM cats;

  SELECT cat_id, name, age, breed
  FROM cats; 