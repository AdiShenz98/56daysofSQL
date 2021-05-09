-- EXISTS operator
-- Author : Aditya Shenoy

USE classicmodels;

-- To find the customer who has at least one order
SELECT 
    customerNumber, 
    customerName
FROM
    customers
WHERE
    EXISTS(
	SELECT 
            1
        FROM
            orders
        WHERE
            orders.customernumber 
		= customers.customernumber);
