-- MINUS Operator
USE classicmodels;

SELECT *
FROM t1;

SELECT *
FROM t2;

-- Using LEFT JOIN to emulate MINUS in MySQL

SELECT
	t1.id
FROM
	t1
LEFT JOIN 
	t2
USING(id)
WHERE
	t2.id IS NULL;