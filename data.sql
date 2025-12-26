CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    ism VARCHAR(100),
    yosh INTEGER,
    email VARCHAR(150),
    year INTEGER
);


INSERT INTO users (ism, yosh, email, year) VALUES
('Ali', 16, 'ali@gmail.com', 2008),
('Vali', 20, 'vali@gmail.com', 2004),
('Hasan', 25, 'hasan@gmail.com', 1999);

SELECT * FROM users;

SELECT id, ism, yosh FROM users;

ALTER TABLE users
ADD COLUMN kasb VARCHAR(100);

UPDATE users
SET kasb = 'Dasturchi',
    email = 'vali_new@gmail.com'
WHERE id = 2;


ALTER TABLE users
ALTER COLUMN yosh TYPE VARCHAR(10);

ALTER TABLE users
DROP COLUMN year;

DELETE FROM users
WHERE ism = 'Ali';

SELECT * FROM users
WHERE CAST(yosh AS INTEGER) > 17;

SELECT COUNT(*) AS user_soni FROM users;


-- BOOKS

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    price INTEGER DEFAULT 0, 
    level VARCHAR(50),       
    category VARCHAR(100),   
    author VARCHAR(150),
    image_url TEXT,
    is_free BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO books (title, price, level, category, author, image_url, is_free)
VALUES
(
  'Bobbi Fisher shaxmatni oynashni organing',
  155000,
  'Boshlangich',
  'Tarix',
  'Robert Fisher',
  'bobbi_fisher_1.png',
  FALSE
),
(
  'Bobbi Fisher shaxmatni oynashni organing',
  180000,
  'Havaskor',
  'Adabiyot',
  'Jonathan Dez',
  'bobbi_fisher_2.png',
  FALSE
),
(
  'Mening tizimim',
  0,
  'Havaskor',
  'Matematika',
  'Aron Nimzovich',
  'mening_tizimim.png',
  TRUE
),
(
  'Zurixdagi shaxmat musobaqasi',
  120000,
  'Professional',
  'Tarix',
  'David Bronstein',
  'zurix_shaxmat.png',
  FALSE
);
