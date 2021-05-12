-- CASE statements

USE classicmodels;

WITH cte AS (
	SELECT 
		customerName, 
		COUNT(*) orderCount
	FROM
		orders
	INNER JOIN customers 
		USING (customerNumber)
	GROUP BY customerName
)
SELECT 
    customerName, 
    orderCount,
    CASE orderCount
		WHEN 1 THEN 'One-time Customer'
        WHEN 2 THEN 'Repeated Customer'
        WHEN 3 THEN 'Frequent Customer'
        ELSE 'Loyal Customer'
	end customerType
FROM
    cte
ORDER BY customerName;

