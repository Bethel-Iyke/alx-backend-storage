-- Create a table users that has the following
-- id INT, not null, auto increment, primary key
-- email: VARCHAR(255), not null
-- name: VARCHAR(255)
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    PRIMARY KEY (id)
);
