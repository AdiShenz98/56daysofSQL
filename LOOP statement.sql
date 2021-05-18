use classicmodels;

-- LOOP statement in MySQL
-- procedure to get even numbers

DELIMITER //

CREATE PROCEDURE get_even_nos(
	IN N INT
)
BEGIN 
	DECLARE x int;
    DECLARE output VARCHAR(20);
    
	SET x = 1;
    SET output = "";
	
    loop_label_name : LOOP
		IF x = N THEN
			LEAVE loop_label_name;
		ELSEIF x%2 = 0 THEN
			SET output = CONCAT(output,x,', ');
		END IF;
	SET x = x + 1;
    END LOOP;
    
    SELECT output;
END //

DELIMITER ;

CALL get_even_nos(7);

CALL get_even_nos(10);


    
    