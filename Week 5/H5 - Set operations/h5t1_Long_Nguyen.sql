-- h5t1
-- Long Nguyen

-- Retrieve the different techniques from the artwork table. Each technique should appear only once in the result table.
-- Sort the result rows in ascending order by technique.

-- Result column names:
-- technique

SELECT DISTINCT technique
FROM artwork
ORDER BY technique ASC;

