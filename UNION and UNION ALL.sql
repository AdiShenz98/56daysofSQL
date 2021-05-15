-- UNION and UNION ALL operator

USE classicmodels;

SELECT 
    firstName, 
    lastName
FROM
    employees 
UNION 
SELECT 
    contactFirstName, 
    contactLastName
FROM
    customers;
    
CREATE TABLE t1 (
    id INT PRIMARY KEY
);

CREATE TABLE t2 (
    id INT PRIMARY KEY
);

INSERT INTO t1 VALUES (1),(2),(3);
INSERT INTO t2 VALUES (2),(3),(4);


SELECT id
FROM t1
UNION
SELECT id
FROM t2;

SELECT id
FROM t1
UNION ALL
SELECT id
FROM t2;




