DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tags;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR(255),
  password_digest VARCHAR,
  age INTEGER,
  gender VARCHAR(1),
  location VARCHAR(255),
  avatar TEXT,
  created_at DATETIME
);

CREATE TABLE tags (
  id INTEGER PRIMARY KEY,
  sport VARCHAR(255)
);

CREATE TABLE topics (
  id INTEGER PRIMARY KEY,
  name TEXT,
  user_id INTEGER REFERENCES users(id),
  posted_at DATETIME,
  content TEXT,
  likes INTEGER,
  comment_count INTEGER,
  tag VARCHAR
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  topic_id INTEGER REFERENCES topics(id),
  user_id INTEGER REFERENCES users(id),
  posted_at DATETIME,
  content TEXT
);