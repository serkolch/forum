DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS forums;
DROP TABLE IF EXISTS forums_topics;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR(255),
  age INTEGER,
  gender VARCHAR(1),
  location VARCHAR(255),
  avatar TEXT,
  created_at DATETIME
);

CREATE TABLE forums (
  id INTEGER PRIMARY KEY,
  sport VARCHAR(255)
);

CREATE TABLE topics (
  id INTEGER PRIMARY KEY,
  topic_name TEXT,
  user_id VARCHAR(255) REFERENCES users(id),
  posted_at DATETIME,
  content TEXT,
  likes INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  topic_id INTEGER REFERENCES topics(id),
  user_id VARCHAR(255) REFERENCES users(id),
  posted_at DATETIME,
  content TEXT
);

CREATE TABLE forums_topics (
  forum_id INTEGER REFERENCES forums(id),
  topic_id INTEGER REFERENCES topics(id)
);