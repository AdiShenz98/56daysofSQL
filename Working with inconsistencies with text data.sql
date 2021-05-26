-- Inconsistencies in Text Data
USE classicmodels;

-- Converting Case
SELECT lower('hElLo woRlD 1!');
SELECT upper('hElLo woRlD 1!');

-- Trimming Spaces
SELECT trim(' sql ');
SELECT rtrim(' sql '),
       ltrim(' sql ');

-- ILIKE
CREATE TABLE fruit
	( fav_fruit VARCHAR(25) );
    
INSERT INTO fruit(fav_fruit)
VALUES ('apple'),
	   ('Apple'),
       (' apple'),
       ('banana'),
       (' banana'),
       ('APPLES'),
       ('apple'),
       ('banana'),
       ('apple'),
       ('BANANA'),
       ('APPLE'),
       ('apple');
       
SELECT *
FROM fruit;





