CREATE DATABASE database_links;
USE database_links;

-- USERS TABLE
CREATE TABLE users(
    id          INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username    VARCHAR(16) NOT NULL,
    password    VARCHAR(60) NOT NULL,
    fullname    VARCHAR(100) NOT NULL
);

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- LINKS TABLE
CREATE TABLE links(
    id          INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(150) NOT NULL,
    url         VARCHAR(255) NOT NULL,
    description TEXT,
    user_id     INT(11),
    created_at  TIMESTAMP NOT NULL DEFAULT current_timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) 
);

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;