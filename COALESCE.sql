USE classicmodels;

SELECT 
    customerName, city, state, country
FROM
    customers;
    
SELECT 
    customerName, city, COALESCE(state, 'N/A'), country
FROM
    customers;
    

    
    
    

    
    