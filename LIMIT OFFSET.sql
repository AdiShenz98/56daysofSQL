-- nth highest or lowest values

-- GENERAL SYNTAX
-- SELECT select_list
-- FROM table_name
-- ORDER BY sort_expression
-- LIMIT n-1, 1;

USE classicmodels;
-- Find the customer who has the third highest-credit

SELECT
	customerName,
    creditLimit
FROM
	customers
ORDER BY
	creditLimit DESC
LIMIT 2,1;




	
    




