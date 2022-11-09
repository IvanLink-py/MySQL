--@block DATABASE
DROP DATABASE IF EXISTS test34;

CREATE DATABASE test34;

--@block TABLE tbl1
DROP TABLE IF EXISTS tbl1;

CREATE TABLE tbl1(
    id INT PRIMARY KEY AUTO_INCREMENT,
    txt varchar(50) NOT NULL DEFAULT '',
    dt datetime,
    col4 enum('case1', 'case2', 'case3')
);

--@block 
DESCRIBE tbl1;

--@block 
SHOW CREATE TABLE tbl1;

--@block SELECT
SELECT
    *
FROM
    tbl1;

--@block 
INSERT INTO
    tbl1
VALUES
    (4, 'some text', NOW(), 'case1');

--@block 
INSERT INTO
    tbl1
VALUES
    (NULL, 'NULL', NOW(), 'case2'),
    (NULL, 'h1', NOW(), 'case3'),
    (NULL, 'h2', NOW(), 'case1'),
    (NULL, 'h3', NOW(), 'case2');

--@block 
INSERT INTO
    tbl1 (txt, col4)
VALUES
    ('NULL', 'case2'),
    ('h1', 'case3');

--@block 
INSERT
    IGNORE INTO tbl1
VALUES
    (4, 'qwerty', NOW(), 'case2'),
    (24, 'qwerty', NOW(), 'case2'),
    (25, 'qwerty', NOW(), 'case2'),
    (26, 'qwerty', NOW(), 'case2'),
    (24, 'qwerty', NOW(), 'case2');

--@block 
INSERT INTO
    tbl1
SET
    id = 40,
    txt = 'asd',
    col4 = 'case1';

--@block 
SELECT
    user
FROM
    MySQL.user;

--@block 
INSERT INTO
    tbl1
SELECT
    NULL,
    user,
    NOW(),
    'case1'
FROM
    MySQL.user;

------------------ LOAD -----------------------
--@block 
LOAD data 
    INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/data.txt' 
    INTO TABLE tbl1 
    FIELDS TERMINATED BY ',' 
    LINES TERMINATED BY '\n';

--@block 
SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            tbl1
        ORDER BY
            id DESC
        LIMIT
            5
    ) AS tb
ORDER BY
    id ASC;