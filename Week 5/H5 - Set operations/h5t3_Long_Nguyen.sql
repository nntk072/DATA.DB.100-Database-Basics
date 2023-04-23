-- h5t3
-- Long Nguyen

-- Retrieve IDs, first names, and last names for those artists who have done both paintings and drawings.
-- Sort the result rows in ascending order by artist ID.

-- Results column names:
-- artist_id | first_name | last_name

-- Submit the query in your solution document (* .sql)

-- Note usage of  the ORDER BY part in queries containing the INTERSECT, UNION, or EXCEPT operation:
-- In SQLite, the table name must be used as a suffix (as a qualifier) in the ORDER BY section if it refers to a column name found in two or more tables used in the query.

-- You can also rename the column used for sorting in the SELECT section to the same name as the original column name (a method which works in this query) or to a different name (if you want the original column with a different name in the output).

-- Using the position number of the result column (starting from number 1 from left to right) in the ORDER BY section works also.

SELECT artist_id, first_name, last_name
FROM artist
WHERE artist_id IN (
    SELECT artist_id
    FROM artwork
    WHERE technique = 'painting'
    INTERSECT
    SELECT artist_id
    FROM artwork
    WHERE technique = 'drawing'
)
ORDER BY artist_id ASC;
