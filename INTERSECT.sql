-- INTERSECT
USE classicmodels;

CREATE TABLE t1 (
    id INT PRIMARY KEY
);

CREATE TABLE t2 LIKE t1;

INSERT INTO t1(id) VALUES(1),(2),(3);

INSERT INTO t2(id) VALUES(2),(3),(4);

-- Emulate INTERSECT using DISTINCT and INNER JOIN clause

SELECT DISTINCT 
   id 
FROM t1
   INNER JOIN t2 USING(id);
   
-- Emulate INTERSECT using IN and subquery
    
SELECT DISTINCT id
FROM t1
WHERE id IN (SELECT id FROM t2);


   
   