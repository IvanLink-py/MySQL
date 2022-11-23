--@block
SELECT
    'first'
UNION
SELECT
    'second';

--@block
USE World;

--@block
SELECT
    c1.name
FROM
    city c1
    INNER JOIN city c2 ON c1.name = c2.name
WHERE
    c1.id <> c2.id;

--@block
SELECT
    name
FROM
    world.city
WHERE
    name LIKE 'Zeleznogorsk'
UNION
ALL
SELECT
    'second';

--@block
SELECT
    name
FROM
    world.city
WHERE
    name LIKE 'Zeleznogorsk'
UNION
ALL
SELECT
    'second'
UNION
ALL
SELECT
    name
FROM
    world.city
WHERE
    name LIKE 'Springfield';

--@block
SELECT
    name
FROM
    world.city
WHERE
    name LIKE 'Zeleznogorsk'
UNION
ALL
SELECT
    'second'
UNION
ALL
SELECT
    name
FROM
    world.city
WHERE
    name LIKE 'Springfield'
LIMIT
    2;

--@block
SELECT
    name
FROM
    world.city
WHERE
    name LIKE 'Zeleznogorsk'
UNION
ALL
SELECT
    'second'
UNION
ALL (
    SELECT
        name
    FROM
        world.city
    WHERE
        name LIKE 'Springfield'
    LIMIT
        2
);

--@block
SELECT
    'bbbb'
UNION
SELECT
    'aaaa'
UNION
SELECT
    'cccc'
ORDER BY
    1;

--@block
(
    SELECT
        name
    FROM
        world.city
    ORDER BY
        name
    LIMIT
        5
)
UNION
(
    SELECT
        name
    FROM
        world.country
    ORDER BY
        name DESC
    LIMIT
        5
);

--@block
(
    SELECT
        name
    FROM
        world.city
    ORDER BY
        name
    LIMIT
        5
)
UNION
(
    SELECT
        name into outfile 'C:/'
    FROM
        world.country
    ORDER BY
        name DESC
    LIMIT
        5
);