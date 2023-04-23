-- h5t1
-- Long Nguyen
-- Retrieve the following information from the artwork table: number of works, minimum value, and maximum value.

-- Result column names:
-- artwork_count | min_value | max_value

SELECT COUNT(artwork_id) AS artwork_count, MIN(value) AS min_value, MAX(value) AS max_value
FROM artwork;

