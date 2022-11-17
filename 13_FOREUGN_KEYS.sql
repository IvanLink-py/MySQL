--@block
DROP TABLE IF EXISTS parent;

CREATE TABLE PARENT (id INT NOT NULL, PRIMARY KEY (id)) ENGINE = INNODB;

--@block
DROP TABLE IF EXISTS child;

CREATE TABLE child(
    id INT,
    parent_id INT,
    INDEX par_ind (parent_id),
    FOREIGN KEY (parent_id) REFERENCES parent (id) ON DELETE CASCADE
) ENGINE = innodb;

--@block
DELETE FROM
    parent;

INSERT INTO
    parent
VALUES
    (234),
    (238);

INSERT INTO
    child
VALUES
    (1, 234),
    (2, 234),
    (3, 238);

--@block ERROR
INSERT INTO
    child
VALUES
    (4, 239);

--@block 
DELETE FROM
    child
WHERE
    id = 3;

--@block 
DELETE FROM
    parent
WHERE
    id = 234;
