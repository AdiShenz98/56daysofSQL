-- CASE statements

USE classicmodels;

SELECT 
    customerName, 
    COUNT(*) orderCount
FROM
    orders
INNER JOIN customers 
	USING (customerNumber)
GROUP BY customerName
ORDER BY COUNT(*);

