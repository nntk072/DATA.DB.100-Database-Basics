CREATE TABLE brand (
    b_id INT PRIMARY KEY,
    bname VARCHAR UNIQUE,
    country VARCHAR
);

CREATE TABLE product (
    p_id INT PRIMARY KEY,
    pname VARCHAR UNIQUE,
    description VARCHAR,
    price INT,
    b_id INT,
    FOREIGN KEY (b_id) REFERENCES brand
);

CREATE TABLE falls_into (
    p_id INT,
    c_id INT,
    PRIMARY KEY (p_id, c_id),
    FOREIGN KEY (p_id) REFERENCES product,
    FOREIGN KEY (c_id) REFERENCES category
);

CREATE TABLE category (
    c_id INT PRIMARY KEY,
    cname VARCHAR UNIQUE
);

CREATE TABLE user (
    u_id INT PRIMARY KEY,
    uname VARCHAR UNIQUE,
    byear INT
);

CREATE TABLE evaluation (
    u_id INT,
    p_id INT,
    edate DATE,
    rating INT,
    review VARCHAR,
    PRIMARY KEY (u_id, p_id, edate),
    FOREIGN KEY (u_id) REFERENCES user,
    FOREIGN KEY (p_id) REFERENCES product
);

-- User 
-- Below are given the name and year of birth of the user.
-- • Anni N, 1985 
-- • Juuso K, 1990 
-- • Eino U, 1940 
-- • Aila J, 1953 
-- Categories
 
-- • garden 
-- • forest 
-- • snow clearing 
-- Brands and products
-- Below are given brand name, country, as well as brand products (product name, description, price and 
-- categories)
 
-- • McCee, United States 
-- o Grass trimmer TRCee, efficient 4-stroke, 179.00 
-- ▪ categories: garden 
-- o Trimmer line Cee, high-class line, 6.99 
-- ▪ categories: garden 
-- o Chain saw MSCee RR, robust and heavy, 559.00 
-- ▪ categories: forest, garden 
-- • KooTek, Finland 
-- o Trimmer line Y, all-purpose line, 3.99 
-- ▪ categories: garden 
-- o Shovel L, light general-purpose shovel, 23.95 
-- ▪ categories: garden, snow clearing 

-- Ratings and reviews made by users 
-- • Anni N has given on 2021-06-05 for the product Grass trimmer TRCee rating of 3. 
-- • Anni N has given on 2021-06-13 for the product Trimmer line Cee rating of 2. 
-- • Anni N has given on 2021-07-24 for the product Shovel L rating of 3. 
-- • Anni N has given on 2021-08-13 for the product Trimmer line Y rating of 4. 
-- • Anni N has given on 2021-09-12 for the product Grass trimmer TRCee rating of 5 and review ”
-- reliable and functioning gadget”. 
-- • Eino U has given on 2021-06-30 for the product Grass trimmer TRCee rating of 5 and review 
-- ”excellent”. 
-- • Eino U has given on 2021-07-02 for the product Trimmer line Cee rating of 2 and review ”
-- moderately works”. 
-- • Juuso K has given on 2021-06-04 for the product Shovel L rating of 1 and review ”rip-off”. 
-- • Aila J has given on 2021-08-11 for the product Shovel L rating of 1 and review ”completely 
-- useless”. 


INSERT INTO category VALUES (1, 'garden');
INSERT INTO category VALUES (2, 'forest');
INSERT INTO category VALUES (3, 'snow clearing');

INSERT INTO brand VALUES (1, 'McCee', 'United States');
INSERT INTO brand VALUES (2, 'KooTek', 'Finland');

INSERT INTO product VALUES (1, 'Grass trimmer TRCee', 'efficient 4-stroke', 179.00, 1);
INSERT INTO product VALUES (2, 'Trimmer line Cee', 'high-class line', 6.99, 1);
INSERT INTO product VALUES (3, 'Chain saw MSCee RR', 'robust and heavy', 559.00, 1);
INSERT INTO product VALUES (4, 'Trimmer line Y', 'all-purpose line', 3.99, 2);
INSERT INTO product VALUES (5, 'Shovel L', 'light general-purpose shovel', 23.95, 2);

INSERT INTO falls_into VALUES (1, 1);
INSERT INTO falls_into VALUES (2, 1);
INSERT INTO falls_into VALUES (3, 1);
-- INSERT INTO falls_into VALUES (2, 2);
INSERT INTO falls_into VALUES (3, 2);
INSERT INTO falls_into VALUES (4, 1);
-- INSERT INTO falls_into VALUES (5, 1);
INSERT INTO falls_into VALUES (5, 3);

INSERT INTO user VALUES (1, 'Anni N', 1985);
INSERT INTO user VALUES (2, 'Juuso K', 1990);
INSERT INTO user VALUES (3, 'Eino U', 1940);
INSERT INTO user VALUES (4, 'Aila J', 1953);

INSERT INTO evaluation VALUES (1, 1, '2021-06-05', 3, NULL);
INSERT INTO evaluation VALUES (1, 2, '2021-06-13', 2, NULL);

INSERT INTO evaluation VALUES (1, 5, '2021-09-12', 5, 'reliable and functioning gadget');
INSERT INTO evaluation VALUES (3, 1, '2021-06-30', 5, 'excellent');
INSERT INTO evaluation VALUES (3, 2, '2021-07-02', 2, 'moderately works');
INSERT INTO evaluation VALUES (2, 5, '2021-06-04', 1, 'rip-off');
INSERT INTO evaluation VALUES (4, 5, '2021-08-11', 1, 'completely useless');


Retrieve the following information for the cheapest McCee brand product: product name and price.

column names of result table:
pname | price

SELECT pname, price
FROM product
WHERE b_id = 1
ORDER BY price ASC
LIMIT 1;

