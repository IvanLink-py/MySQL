SELECT
    name
FROM
    country
WHERE
    code = (
        SELECT
            CountryCode
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
            CountryCode
        FROM
            city
        WHERE
            population > 5e6
        ORDER BY
            population DESC
    );

--@block
SELECT
    name
FROM
    country
WHERE
    code = ANY (
        SELECT
            CountryCode
        FROM
            city
        WHERE
            population > 5e6
        ORDER BY
            population DESC
    );

--@block
SELECT
    name
FROM
    country
WHERE
    code = SOME (
        SELECT
            CountryCode
        FROM
            city
        WHERE
            population > 5e6
        ORDER BY
            population DESC
    );

--@block
SELECT
    CountryCode,
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
            CountryCode = 'JPN'
    )
    AND CountryCode = 'BRA';

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
            CountryCode = 'BRA'
    )
    AND CountryCode = 'JPN';

--@block
SELECT
    name,
    population
FROM
    city
WHERE
    CountryCode = 'BRA';

--@block
SELECT
    name,
    population
FROM
    city
WHERE
    CountryCode = 'JPN';

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
            CountryCode = 'JPN'
    )
    AND CountryCode = 'BRA';

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
            CountryCode = 'JPN'
    )
    AND CountryCode = 'BRA';