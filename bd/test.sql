DROP DATABASE IF EXISTS test_db;
CREATE DATABASE test_db;
USE test_db;

CREATE TABLE simple_entity (
	id BIGINT PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO simple_entity (id, name) VALUES (1, 'Alice');
INSERT INTO simple_entity (id, name) VALUES (2, 'Bob');
INSERT INTO simple_entity (id, name) VALUES (3, 'Charlie');
