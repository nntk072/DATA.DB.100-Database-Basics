CREATE TABLE brand (
    id INT PRIMARY KEY,
    name VARCHAR UNIQUE,
    country VARCHAR
);

CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR UNIQUE,
    price INT,
    description VARCHAR,
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
    id INT PRIMARY KEY,
    name VARCHAR UNIQUE
);

CREATE TABLE user (
    id INT PRIMARY KEY,
    name VARCHAR UNIQUE,
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
