# Rollup

use classicmodels;

# Creating a new sales Table
CREATE TABLE sales
SELECT
    productLine,
    YEAR(orderDate) orderYear,
    SUM(quantityOrdered * priceEach) orderValue
FROM
    orderDetails
        INNER JOIN
    orders USING (orderNumber)
        INNER JOIN
    products USING (productCode)
GROUP BY
    productLine ,
    YEAR(orderDate);
    
#Using rollup 

SELECT
	productLine,
    orderYear,
    SUM(orderValue) AS totalOrderValue
FROM
	sales
GROUP BY
	productLine,
    orderYear
WITH ROLLUP;

