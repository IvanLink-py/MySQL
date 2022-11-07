SELECT
    2 + 4;

--@block 
SELECT
    left(name, 10),
    continent
FROM
    country;

--@block 
SELECT
    DISTINCT continent Континент
FROM
    country;

--@block 
SELECT
    left(name, 10),
    population
FROM
    country
LIMIT
    5;

--@block 
SELECT
    left(name, 10),
    population
FROM
    country
LIMIT
    5 OFFSET 2;

--@block 
SELECT
    left(name, 10),
    population
FROM
    country
LIMIT
    2, 5;

--@block 
SELECT
    code,
    left(name, 10),
    population
FROM
    country
WHERE
    code = 'AFG';

--@block 
SELECT
    code,
    left(name, 10),
    population
FROM
    country
WHERE
    population > 1e7;

--@block 
SELECT
    code,
    left(name, 10),
    population
FROM
    country
WHERE
    surfacearea > 1e6;

--@block 
SELECT
    code,
    left(name, 10),
    population
FROM
    country
WHERE
    surfacearea > 1e6
    AND surfacearea < 4e6;

--@block 
SELECT
    code,
    left(name, 10),
    population
FROM
    country
WHERE
    surfacearea BETWEEN 1e6
    AND 4e6;

--@block 
SELECT
    name,
    population
FROM
    city
WHERE
    name LIKE 'Moscow';

--@block 
SELECT
    name,
    population
FROM
    city
WHERE
    name LIKE '_os___';

--@block 
SELECT
    name,
    population
FROM
    city
WHERE
    name LIKE '%w';

--@block 
SELECT
    name,
    population
FROM
    city
WHERE
    name LIKE 'A%';

--@block 
SELECT
    name,
    population
FROM
    city
WHERE
    name LIKE '__an%';

--@block 
SELECT
    name,
    population
FROM
    city
WHERE
    name IN ('Ivanovo', 'Orange', 'Ulan Bator');

--@block 
SELECT
    name,
    population
FROM
    city
ORDER BY
    name DESC
LIMIT
    5;

--@block 
SELECT
    name,
    population
FROM
    city
ORDER BY
    population DESC
LIMIT
    5;

--@block 
SELECT
    name,
    population
FROM
    city
ORDER BY
    rand()
LIMIT
    5;

--@block 
SELECT
    continent
FROM
    country
GROUP BY
    1;

--@block 
SELECT
    continent,
    SUM(population)
FROM
    country
GROUP BY
    1;

--@block 
SELECT
    continent,
    region,
    SUM(population)
FROM
    country
GROUP BY
    1,
    2;

--@block 
SELECT
    continent,
    region,
    SUM(population)
FROM
    country
GROUP BY
    continent,
    region WITH ROLLUP
ORDER BYр
    continent,
    region;

--@block 
SELECT
    continent,
    SUM(population)
FROM
    country
GROUP BY
    1
HAVING
    SUM(population) >= 482993000;

--@block 
SELECT
    continent,
    SUM(population) into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/q.txt'
FROM
    country
GROUP BY
    1
HAVING
    SUM(population) >= 482993000;