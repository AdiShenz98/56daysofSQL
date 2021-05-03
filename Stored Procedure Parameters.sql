-- Stored Procedure Paramaters

-- IN Parameter

DELIMITER //

CREATE PROCEDURE GetOfficeByCountry
	(
			IN CountryName VARCHAR(255)
    )
BEGIN
	SELECT *
    FROM Offices
    WHERE country = CountryName;
END //

DELIMITER ;

CALL GetOfficeByCountry('USA');


-- OUT Parameter

DELIMITER //

CREATE PROCEDURE GetCountByStatus
	(
		IN orderstatus VARCHAR(255),
        OUT total INT 
    )
BEGIN
	SELECT COUNT(ordernumber)
    INTO total 
    FROM orders
    WHERE status = orderstatus;
END //

DELIMITER ;

CALL GetCountbyStatus('Shipped',@T);

SELECT @T AS TOTAL;

CALL GetCountByStatus('in process', @T2);

SELECT @T AS total, 
	   @T2 AS total_in_process;
       
-- INOUT PARAMETER