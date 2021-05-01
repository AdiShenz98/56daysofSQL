USE `classicmodels`;

DELIMITER //
CREATE PROCEDURE GetCustomers()
BEGIN
	SELECT *
    FROM 
		Customers;
END //

DELIMITER ;

CALL GetCustomers;

DELIMITER //


