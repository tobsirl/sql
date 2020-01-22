-- IG Clone Users Schema
CREATE TABLE users
(
  id INTEGER
  AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR
  (255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW
  ()
);

  -- IG Clone Photos Schema
  CREATE TABLE photos
  (
    id INTEGER
    AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR
    (255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW
    (),
    FOREIGN KEY
    (user_id) REFERENCES users
    (id)
);

    -- IG Clone Comments Schema
    CREATE TABLE comments
    (
      id INTEGER
      AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR
      (255) NOT NULL,
    photo_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW
      (),
    FOREIGN KEY
      (photo_id) REFERENCES photos
      (id),
    FOREIGN KEY
      (user_id) REFERENCES users
      (id)
);