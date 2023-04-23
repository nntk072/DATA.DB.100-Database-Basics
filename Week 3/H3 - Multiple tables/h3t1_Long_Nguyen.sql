-- h3t1 Long Nguyen

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

