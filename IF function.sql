use classicmodels;

-- IF function
SELECT 
    customerNumber,
    customerName,
	IF(state IS NULL, 'N/A', state) AS state
FROM
    customers;


-- IF function with aggregate functions	
SELECT 
    SUM(IF(status = 'Shipped', 1, 0)) AS Shipped,
    SUM(IF(status = 'Cancelled', 1, 0)) AS Cancelled
FROM
    orders;
    
    
    