CREATE DATABASE sysadcrud;

USE sysadcrud;

CREATE TABLE task(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO task (title, description)
VALUES ("SUPER", "Exercise2 abgeschlossen");

DESCRIBE task;
