-- h5t3
-- Long Nguyen
-- Retrieve the number of works for each different technique in the artwork table.
-- Sort the result rows in ascending order by technique.

-- Result column names:
-- technique | count

SELECT technique, COUNT(artwork_id) AS count
FROM artwork
GROUP BY technique
ORDER BY technique ASC;

