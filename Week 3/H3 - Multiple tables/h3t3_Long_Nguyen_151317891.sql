-- h3t3 Long Nguyen 151317891
-- CREATE TABLE and INSERT INTO statements for book table

-- CREATE TABLE book(
--     id INT NOT NULL,
--     title VARCHAR(30) NOT NULL,
--     predecessor_id INT,
--     PRIMARY KEY (id),
--     FOREIGN KEY (predecessor_id) REFERENCES book);

-- INSERT INTO book
-- VALUES (1, 'The Fellowship of the Ring', NULL);
  
-- INSERT INTO book
-- VALUES (2, 'The Two Towers', 1);

-- INSERT INTO book
-- VALUES (3, 'The Return of the King', 2);


/*
SELECT *
FROM book;

 id |           title            | predecessor_id
----+----------------------------+----------------
  1 | The Fellowship of the Ring |
  2 | The Two Towers             |              1
  3 | The Return of the King     |              2
*/

/*
Retrieve the titles of the book and its sequel. Books that do not have a sequel are also included in the result table. Sort the result rows in in ascending order by book id.

Output column names:
title | sequel_title
*/

SELECT b1.title, b2.title AS sequel_title
FROM book b1 LEFT JOIN book b2
ON b1.id = b2.predecessor_id
ORDER BY b1.id;
