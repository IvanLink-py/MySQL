USE world;

SELECT
    name
FROM
    country
WHERE
    code = (
        SELECT
            coutrycode
        FROM
            city
        ORDER BY
            population DESC
        LIMIT
            1
    );

--@block
SELECT
    name
FROM
    country
WHERE
    code IN (
        SELECT
            coutrycode
        FROM
            city
        ORDER BY
            population DESC
        WHERE
            population > 5e6
    );

--@block
SELECT
    name
FROM
    country
WHERE
    code = ANY (
        SELECT
            coutrycode
        FROM
            city
        ORDER BY
            population DESC
        WHERE
            population > 5e6
    );

--@block
SELECT
    name
FROM
    country
WHERE
    code = SOME (
        SELECT
            coutrycode
        FROM
            city
        ORDER BY
            population DESC
        WHERE
            population > 5e6
    );


--@block
SELECT
    coutrycode,
    name
FROM
    city
ORDER BY
    rand()
LIMIT
    2;

--@block
SELECT
    name,
    population
FROM
    city
WHERE
    population > ANY(
        SELECT
            population
        FROM
            city
        WHERE
            coutrycode = 'JPN'
    ) AND coutrycode = 'BRA';

--@block
SELECT
    name,
    population
FROM
    city
WHERE
    population > ANY(
        SELECT
            population
        FROM
            city
        WHERE
            coutrycode = 'BRA'
    ) AND coutrycode = 'JPN';


--@block
SELECT
    name,
    population
FROM
    city
WHERE
    AND coutrycode = 'BRA';

--@block
SELECT
    name,
    population
FROM
    city
WHERE
    AND coutrycode = 'JPN';

--@block
SELECT
    name,
    population
FROM
    city
WHERE
    population > ALL(
        SELECT
            population
        FROM
            city
        WHERE
            coutrycode = 'JPN'
    ) AND coutrycode = 'BRA';

--@block
SELECT
    name,
    population
FROM
    city
WHERE
    population < ALL(
        SELECT
            population
        FROM
            city
        WHERE
            coutrycode = 'JPN'
    ) AND coutrycode = 'BRA';