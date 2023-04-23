-- h3t2 Long Nguyen
/*
Retrieve the titles of the book and its predecessor. The books with no predecessor will also be included. Sort the result rows in ascending order by book id.

Output column names:
title | predecessor_title
*/

SELECT b.title, b2.title AS predecessor_title
FROM book b
LEFT JOIN book b2
ON b.predecessor_id = b2.id
ORDER BY b.id;