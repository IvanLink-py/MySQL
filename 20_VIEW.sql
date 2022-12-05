USE World;

--@block 
SELECT
    DATABASE();

--@block 
SHOW TABLES;

--@block
SELECT
    code,
    name,
    population
FROM
    country
ORDER BY
    3 DESC
LIMIT
    10;

--@block 
DROP VIEW IF EXISTS country_top_population_view;

CREATE VIEW country_top_population_view AS
SELECT
    code,
    name,
    population
FROM
    country
ORDER BY
    3 DESC
LIMIT
    10;

--@block
SELECT
    *
FROM
    country_top_population_view;

--@block 
DROP VIEW IF EXISTS asia;

CREATE VIEW asia AS
SELECT
    *
FROM
    country
WHERE
    Continent = 'Asia';

--@block
SELECT
    name,
    Population
FROM
    asia;

--@block 
DROP VIEW IF EXISTS Europe;

CREATE VIEW Europe AS
SELECT
    *
FROM
    country
WHERE
    Continent = 'Europe';

--@block
SELECT
    name,
    Population
FROM
    Europe;

--@block
UPDATE
    Europe
SET
    Population = population + 1e8
WHERE
    Code = 'GRC'