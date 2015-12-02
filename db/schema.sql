DROP TABLE IF EXISTS forums;
DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS users;

CREATE TABLE forums (
  id INTEGER PRIMARY KEY,
  forum_name VARCHAR(255)
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR(255),
  age INTEGER,
  gender VARCHAR(1),
  location VARCHAR(255),
  avatar TEXT
);

CREATE TABLE topics (
  id INTEGER PRIMARY KEY,
  topic_parent INTEGER REFERENCES forums(id),
  topic_name TEXT,
  posted_by VARCHAR(255) REFERENCES users(id),
  date_posted VARCHAR(255),
  time_posted VARCHAR(255),
  content TEXT
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  comment_parent INTEGER REFERENCES topics(id),
  posted_by VARCHAR(255) REFERENCES users(id),
  date_posted VARCHAR(255),
  time_posted VARCHAR(255),
  content TEXT
);