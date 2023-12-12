DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS emails;
DROP TABLE IF EXISTS users;


CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
	age INTEGER,
	gender TEXT,
	nationality TEXT
);

CREATE TABLE IF NOT EXISTS emails(
	id INTEGER PRIMARY KEY NOT NULL,
	user_id INTEGER references users(id),
	email TEXT
);

CREATE TABLE IF NOT EXISTS posts(
	id INTEGER PRIMARY KEY NOT NULL,
	user_id INTEGER references users(id),
	title TEXT,
	description TEXT
);

CREATE TABLE IF NOT EXISTS comments(
	id INTEGER PRIMARY KEY NOT NULL,
	user_id INTEGER references users(id),
	post_id INTEGER references posts(id),
	text TEXT
);

CREATE TABLE IF NOT EXISTS likes(
	id INTEGER PRIMARY KEY NOT NULL,
	user_id INTEGER references users(id),
	post_id INTEGER references posts(id)
);
