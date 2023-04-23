-- h3t3 Long Nguyen
/*
Retrieve the titles of the book and its sequel. Books that do not have a sequel are also included in the result table. Sort the result rows in in ascending order by book id.

Output column names:
title | sequel_title
*/

SELECT b1.title, b2.title AS sequel_title
FROM book b1 LEFT JOIN book b2
ON b1.id = b2.predecessor_id
ORDER BY b1.id;
