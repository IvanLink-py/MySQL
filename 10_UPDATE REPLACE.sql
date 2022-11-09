DESCRIBE city;

--@block 
SELECT
    *
FROM
    city
ORDER BY
    ID DESC
LIMIT
    1;

--@block 
UPDATE
    city
SET
    Population = Population + 1e4
WHERE
    id = 4079;

--@block 
REPLACE INTO city 
VALUES
    (4079, 'Rafah', 'PSE', 'Rafah', 95000);