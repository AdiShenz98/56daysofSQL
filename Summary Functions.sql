-- Summary Functions

USE classicmodels;

SELECT
	customerNumber,
	count(amount) AS No_of_payments,
	min(amount) AS Min_amount,
    max(amount) AS Max_amount,
    ROUND(avg(amount),2) AS AVG_amount,
    ROUND(stddev(amount),2) AS std_dev
FROM
	payments
GROUP BY
	customerNumber;
    
    
    