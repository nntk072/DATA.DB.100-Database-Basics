-- h6t14
-- Long Nguyen

-- Make a query that retrieves the name of each artwork and the value increased by 10%.
-- Sort the result rows in ascending order by artwork title.

-- Tulostaulu / Result table:
-- artwork_name                    increased_value
-- ------------------------------  --------------------
-- David                           829.4
-- Mona Lisa                       935.0
-- Studies of Things               73.15
-- The Birth of Venus              504.35
-- The Last Judgement              1565.85
-- The Persistence of Memory       605.0
-- Vitruvian Man                   198.55

SELECT artwork_name, value * 1.1 AS increased_value
FROM artwork
ORDER BY artwork_name ASC;