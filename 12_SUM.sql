--@block
SELECT
    AVG(LifeExpectancy)
FROM
    country;

--@block
SELECT
    count(*)
FROM
    country;

--@block
SELECT
    GROUP_CONCAT(name)
FROM
    country
WHERE
    Population BETWEEN 1e4
    AND 1e5;

--@block 
SELECT
    max(surfacearea)
FROM
    country;

--@block 
SELECT
    min(surfacearea)
FROM
    country;

--@block 
SELECT
    max(surfacearea)
FROM
    country
GROUP BY
    name;

--@block
SELECT
    continent,
    sum(surfacearea)
FROM
    country
GROUP BY
    Continent
ORDER BY
    2 DESC;