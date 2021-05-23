-- Derived Tabels

USE classicmodels;

-- GENERAL SYNTAX

SELECT column_list
FROM
	( SELECT column_list
	  FROM table_1
	) derived_table_name
WHERE derived_table_name.c1 > 0;




SELECT 
    productName, sales
FROM
    (SELECT 
        productCode, 
        ROUND(SUM(quantityOrdered * priceEach)) sales
    FROM
        orderdetails
    INNER JOIN orders USING (orderNumber)
    WHERE
        YEAR(shippedDate) = 2003
    GROUP BY productCode
    ORDER BY sales DESC
    LIMIT 5) top5products2003
INNER JOIN
    products USING (productCode);