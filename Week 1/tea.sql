CREATE TABLE tea (
    id          INT,
    name        VARCHAR(50) NOT NULL,
    category    VARCHAR(30),
    price       DECIMAL(5,2),
    PRIMARY KEY (id),
    UNIQUE (name)
);


INSERT INTO tea
VALUES (1, 'Scottish Breakfast Premium', 'black', 6.50);  

INSERT INTO tea
VALUES (2, 'Lovely Lemon', 'black', 4.70);  

INSERT INTO tea
VALUES (3, 'Sources of Wisdom', 'green', 5.80);

INSERT INTO tea
VALUES (4, 'One True Love', 'green', 6.20);  

INSERT INTO tea
VALUES (5, 'Little Sour Face', 'white', 6.90);  

INSERT INTO tea
VALUES (6, 'Yellow Dragon', 'yellow', 6.20);

INSERT INTO tea
VALUES (7, 'Downhill', NULL, NULL);

  
-- id          name                        category    price
-- ----------  --------------------------  ----------  -------
-- 1           Scottish Breakfast Premium  black       6.5
-- 2           Lovely Lemon                black       4.7
-- 3           Sources of Wisdom           green       5.8
-- 4           One True Love               green       6.2
-- 5           Little Sour Face            white       6.9
-- 6           Yellow Dragon               yellow      6.2
-- 7           Downhill