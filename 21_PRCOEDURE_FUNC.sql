DROP PROCEDURE IF EXISTS sp_foo;

delimiter $$ 
CREATE PROCEDURE sp_foo() BEGIN
SELECT
    count(*)
FROM
    city;

END $$ 

delimiter ;

--@block
CALL sp_foo();

--@block 
DROP PROCEDURE IF EXISTS get_city;

delimiter $$ 
CREATE PROCEDURE get_city(IN c CHAR(3), OUT num SMALLINT) BEGIN
SELECT
    count(*) into num
FROM
    city
WHERE c = CountryCode;

END $$ 

delimiter ;

--@block
CALL get_city('CHN', @some);
SELECT @some;

--@block
SELECT
    ROUTINE_NAME,
    ROUTINE_DEFINITION
FROM
    information_Schema.Routines
WHERE
    ROUTINE_SCHEMA = 'world'
    AND ROUTINE_TYPE = 'procedure';