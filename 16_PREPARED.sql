--@block
PREPARE stmt1
FROM
    'SELECT SQRT(POW(?, 2) + POW(?, 2)) as hypotenuse';

--@block
SET @a = 4;
SET @b = 3;

--@block
EXECUTE stmt1 USING @a, @b;

--@block
SET @a = 6;
SET @b = 8;

--@block
EXECUTE stmt1 USING @a, @b;

--@block
use World;

--@block
SET @table_name = 'country';
SET @query2exec = CONCAT('SELECT COUNT(*) FROM ', @table_name);

--@block
PREPARE stmt2 FROM @query2exec;

--@block
EXECUTE stmt2;

--@block 
DEALLOCATE PREPARE stmt2;