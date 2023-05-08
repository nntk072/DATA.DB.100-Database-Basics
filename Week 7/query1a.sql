-- CREATE TABLE brand (
--     b_id INT PRIMARY KEY,
--     bname VARCHAR UNIQUE,
--     country VARCHAR
-- );

-- CREATE TABLE product (
--     p_id INT PRIMARY KEY,
--     pname VARCHAR UNIQUE,
--     price INT,
--     description VARCHAR,
--     b_id INT,
--     FOREIGN KEY (b_id) REFERENCES brand
-- );

-- CREATE TABLE falls_into (
--     p_id INT,
--     c_id INT,
--     PRIMARY KEY (p_id, c_id),
--     FOREIGN KEY (p_id) REFERENCES product,
--     FOREIGN KEY (c_id) REFERENCES category
-- );

-- CREATE TABLE category (
--     c_id INT PRIMARY KEY,
--     cname VARCHAR UNIQUE
-- );

-- CREATE TABLE user (
--     u_id INT PRIMARY KEY,
--     uname VARCHAR UNIQUE,
--     byear INT
-- );

-- CREATE TABLE evaluation (
--     u_id INT,
--     p_id INT,
--     edate DATE,
--     rating INT,
--     review VARCHAR,
--     PRIMARY KEY (u_id, p_id, edate),
--     FOREIGN KEY (u_id) REFERENCES user,
--     FOREIGN KEY (p_id) REFERENCES product
-- );


-- Retrieve the following information from all evaluations: brand name of the evaluated product , name of the product, date of evaluation and rating.

-- Sort result table  rows by product brand name and product name in ascending order and by evaluation date in descending order.

-- column names of result table:
-- bname | pname | edate | rating

SELECT b.bname, p.pname, e.edate, e.rating
FROM evaluation e
JOIN product p ON e.p_id = p.p_id
JOIN brand b ON p.b_id = b.b_id
ORDER BY b.bname, p.pname, e.edate DESC;
