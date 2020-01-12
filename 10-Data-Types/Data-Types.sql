-- CHAR and VARCHAR
CREATE TABLE dogs
(
  name CHAR(5),
  breed VARCHAR(10)
);

INSERT INTO dogs
  (name, breed)
VALUES
  ('bob', 'beagle');

INSERT INTO dogs
  (name, breed)
VALUES
  ('robby', 'corgi');

INSERT INTO dogs
  (name, breed)
VALUES
  ('Princess Jane', 'Retriever');

SELECT *
FROM dogs;

INSERT INTO dogs
  (name, breed)
VALUES
  ('Princess Jane', 'Retrievesadfdsafdasfsafr');

SELECT *
FROM dogs;

-- DECIMAL
CREATE TABLE items
(
  price DECIMAL(5,2)
);

INSERT INTO items
  (price)
VALUES(7);

INSERT INTO items
  (price)
VALUES(7987654);

INSERT INTO items
  (price)
VALUES(34.88);

INSERT INTO items
  (price)
VALUES(298.9999);

INSERT INTO items
  (price)
VALUES(1.9999);

SELECT *
FROM items;
