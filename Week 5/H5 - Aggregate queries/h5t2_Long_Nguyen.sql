-- h5t2
-- Long Nguyen

-- Retrieve the number of different techniques from the artwork table.

-- Result column names:
-- technique_count

SELECT COUNT(DISTINCT technique) AS technique_count
FROM artwork;
