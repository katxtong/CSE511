CREATE TABLE users(
	userid INTEGER PRIMARY KEY,
	name TEXT
);

CREATE TABLE movies(
	movieid INTEGER PRIMARY KEY,
	title TEXT
);

CREATE TABLE taginfo(
	tagid INTEGER PRIMARY KEY,
	content TEXT
);

CREATE TABLE genres(
	genreid INTEGER PRIMARY KEY,
	name TEXT
);

CREATE TABLE ratings(
	userid INTEGER REFERENCES users(userid),
	movieid INTEGER REFERENCES movies(movieid),
	rating NUMERIC,
	timestamp TIMESTAMP,
	CHECK (rating BETWEEN 1 AND 5)
);

CREATE TABLE tags(
	userid INTEGER REFERENCES users(userid),
	movieid INTEGER REFERENCES movies(movieid),
	tagid INTEGER REFERENCES taginfo(tagid),
	timestamp TIMESTAMP
);

CREATE TABLE hasagenre(
	movieid INTEGER REFERENCES movies(movieid),
	genreid INTEGER REFERENCES genres(genreid)
);

-- primary key, foreign key, constraints
-- save as solution.sql
-- 