--@block
SELECT
    code,
    left(name, 25),
    capital
FROM
    country
ORDER BY
    rand()
LIMIT
    1;

-- code, name,   capital
-- CYP,  Cyprus, 2430
--@block 
SELECT
    id,
    city.name
FROM
    city,
    country
WHERE
    country.code = city.CountryCode
    AND country.Name = 'Cyprus';

--@block 
SELECT
    city.id,
    city.name
FROM
    city,
    country
WHERE
    country.Capital = city.id
    AND country.Name = 'Cyprus';

--@block 
SELECT
    city.id,
    city.name
FROM
    city
    INNER JOIN country ON country.Capital = city.id
    AND country.Name = 'Cyprus';

--@block 
SELECT
    LANGUAGE
FROM
    city
    INNER JOIN countrylanguage USING (CountryCode)
WHERE
    city.Name = 'Nicosia';

---------------------------------------------------------------------
--@block 
DROP TABLE IF EXISTS `order`;

DROP TABLE IF EXISTS customer;

CREATE TABLE customer(
    id int AUTO_INCREMENT,
    firstName varchar(100),
    PRIMARY KEY (id)
) ENGINE = InnoDB;

CREATE TABLE `order` (
    id int AUTO_INCREMENT,
    customer_id int,
    INDEX customer_ind (customer_id),
    FOREIGN KEY (customer_id) REFERENCES `customer` (id) ON DELETE CASCADE,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE `order`;

DESCRIBE `customer`;

--@block 
INSERT INTO
    customer (firstName)
VALUES
    ('Vas'),
    ('Girg'),
    ('Alex');

--@block 
INSERT INTO
    `order` (customer_id)
VALUES
    (1),
    (1),
    (3),
    (3);

--@block
SELECT
    *
FROM
    customer
    LEFT JOIN `order` ON customer.id = order.customer_id;

--@block 
SELECT
    LANGUAGE,
    Percentage
FROM
    country
    INNER JOIN countrylanguage ON (code = CountryCode)
WHERE
    country.Name = 'Cyprus'
ORDER BY
    2 DESC;