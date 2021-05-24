-- ENUM datatype

USE classicmodels;


CREATE TABLE tasks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    priority ENUM('Low', 'Medium', 'High') NOT NULL
);

INSERT INTO tasks(title, priority)
VALUES('Scan virus for computer A', 'High');


INSERT INTO tasks(title, priority)
VALUES('Upgrade Windows OS for all computers', 1);

SELECT *
FROM tasks;


