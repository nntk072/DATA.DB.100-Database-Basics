--h2t10
--Long Nguyen 151317891


PRAGMA foreign_keys = ON;
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


CREATE TABLE tea_shop (
    id          INT,
    name        VARCHAR(50) NOT NULL,
    address     VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE (name)
);

INSERT INTO tea_shop
VALUES (1, 'Tea Shop 1', '123 Street');

INSERT INTO tea_shop
VALUES (2, 'Tea Shop 2', '456 Street');

INSERT INTO tea_shop
VALUES (3, 'Tea Shop 3', '789 Street');

INSERT INTO tea_shop
VALUES (4, 'Tea Shop 4', '101112 Street');

INSERT INTO tea_shop
VALUES (5, 'Tea Shop 5', '131415 Street');

-- id          name        address
-- ----------  ----------  --------------
-- 1           Tea Shop 1  123 Street
-- 2           Tea Shop 2  456 Street
-- 3           Tea Shop 3  789 Street
-- 4           Tea Shop 4  101112 Street
-- 5           Tea Shop 5  131415 Street

CREATE TABLE sells (
    tea_id      INT,
    shop_id     INT,
    PRIMARY KEY (tea_id, shop_id),
    FOREIGN KEY (tea_id) REFERENCES tea(id),
    FOREIGN KEY (shop_id) REFERENCES tea_shop(id)
);

INSERT INTO sells
VALUES (1, 1);

INSERT INTO sells
VALUES (1, 2);

INSERT INTO sells
VALUES (1, 3);

INSERT INTO sells
VALUES (2, 1);

INSERT INTO sells
VALUES (2, 2);

INSERT INTO sells
VALUES (2, 3);

INSERT INTO sells
VALUES (3, 1);


-- tea_id      shop_id
-- ----------  ----------
-- 1           1
-- 1           2
-- 1           3
-- 2           1
-- 2           2
-- 2           3
-- 3           1
