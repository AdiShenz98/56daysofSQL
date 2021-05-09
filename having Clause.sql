# Having

use classicmodels;

SELECT 
	orderNumber,
    SUM(quantityOrdered) AS total_quantity,
    SUM(quantityOrdered * priceEach) AS total_price
FROM
	orderdetails
GROUP BY
	orderNumber
HAVING
	total_price > 1000
ORDER BY
	total_price DESC;