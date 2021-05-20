-- REPEAT Statements

-- GENERAL SYNTAX
-- [begin_label:] REPEAT
--     statement
-- UNTIL search_condition
-- END REPEAT [end_label]

USE classicmodels;

DELIMITER //

CREATE PROCEDURE RepeatDemo()
BEGIN
	DECLARE counter INT DEFAULT 1;
    DECLARE output VARCHAR(50) DEFAULT '';
    
    REPEAT
		SET output = CONCAT(output, counter,', ');
        SET counter = counter + 1;
	UNTIL counter >= 10
	END REPEAT;
    
    SELECT output;
END //
 
DELIMITER ;

CALL RepeatDemo();




