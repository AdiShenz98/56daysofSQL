-- WHILE Statements

-- SYNTAX
-- [begin_label:] WHILE search_condition DO
--     statement_list
-- END WHILE [end_label]

USE classicmodels;

DELIMITER //

CREATE PROCEDURE getMultiples(
	IN num int
    )
BEGIN
	DECLARE x INT;
    DECLARE output VARCHAR(50);
    
    SET x = 1;
    SET output = "";
    
    WHILE x<=10 DO
		SET output = CONCAT(output,num*x,', ');
        SET x = x + 1;
	END WHILE; 
    
    SELECT output;
END //

DELIMITER ;

CALL getMultiples(7);

CALL getMultiples(89);
		

