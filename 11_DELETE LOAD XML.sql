--@block
SELECT
    id,
    name
FROM
    city
WHERE
    id BETWEEN 2343
    AND 2347;

--@block
DELETE FROM
    city
WHERE
    id = 2345;

--@block
DELETE FROM
    city
ORDER BY
    id DESC
LIMIT
    1 --@block 
DELETE FROM
    city;

--@block
SHOW VARIABLES LIKE "secure_file_priv";
--@block
LOAD xml INFILE 'D:/Users/Документы/Education/БД/Work/data/11_data.xml' INTO TABLE city;