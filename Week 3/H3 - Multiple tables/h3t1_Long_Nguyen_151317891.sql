-- h3t1 Long Nguyen 151317891
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
Retrieve the titles of the book and its predecessor. Only books with a predecessor will be included. Sort the rows in ascending order by book id.

Output column names:
title | predecessor_title

         title          |     predecessor_title
------------------------+----------------------------
 The Two Towers         | The Fellowship of the Ring
 The Return of the King | The Two Towers
*/

SELECT b.title, b2.title AS predecessor_title
FROM book b
LEFT JOIN book b2
ON b.predecessor_id = b2.id
WHERE b.predecessor_id IS NOT NULL
ORDER BY b.id;

