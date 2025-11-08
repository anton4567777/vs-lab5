select datname from pg_database;
create table institutes (
    id SERIAL PRIMARY KEY,
	name VARCHAR(1024) NOT NULL
);
create table groups (
    id SERIAL PRIMARY KEY,
	name VARCHAR(2048) NOT NULL,
	short_name VARCHAR(64) NOT NULL UNIQUE,
	"year" INTEGER NOT NULL,
	institute_id INTEGER NOT NULL
);
create table students (
    id SERIAL PRIMARY KEY,
	surname VARCHAR(512) NOT NULL,
	name VARCHAR(512) NOT NULL,
	father_name VARCHAR(512),
	group_id INTEGER NOT NULL
);