USE classicmodels;

-- FLOOR
CREATE TABLE Number
	( X float );

INSERT INTO Number(X)
VALUES (90.55),
	   (0),
       (-2),
       (-45.76),
       (0.25);


SELECT 
	X, FLOOR(X) AS floor_X
FROM Number;

-- CEIL
DROP TABLE IF EXISTS Number;

CREATE TABLE Number
	( X float );
    
INSERT INTO Number(X)
VALUES (8.5),
	   (1),
       (0),
       (-1),
       (-1.5);
       
SELECT
	X, CEIL(X) AS ceil_X
FROM Number;


    


