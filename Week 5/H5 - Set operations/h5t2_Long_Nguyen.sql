-- h5t2
-- Long Nguyen

-- Retrieve the names and techniques of paintings and drawings. Use the IN operator in your query.
-- Sort the result rows in ascending order by technique and name.

-- Result column names:
-- artwork_name | technique


SELECT artwork_name, technique
FROM artwork
WHERE technique IN ('painting', 'drawing')
ORDER BY technique, artwork_name;

