-- CAST()

USE classicmodels;

SELECT productName,
       CONCAT('Prices(',
               CAST(buyprice AS CHAR),
               ',',
                CAST(msrp AS CHAR),
      ')') prices
FROM products;


