DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR(255),
  age INTEGER,
  gender VARCHAR(1),
  location VARCHAR(255),
  avatar TEXT,
  created_at DATETIME
);

CREATE TABLE topics (
  id INTEGER PRIMARY KEY,
  topic_type VARCHAR(255),
  topic_name TEXT,
  posted_by VARCHAR(255) REFERENCES users(id),
  posted_at DATETIME,
  content TEXT,
  likes INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  comment_parent INTEGER REFERENCES topics(id),
  posted_by VARCHAR(255) REFERENCES users(id),
  posted_at DATETIME,
  content TEXT
);