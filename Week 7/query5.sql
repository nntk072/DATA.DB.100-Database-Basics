-- Retvieve names for those users who have rated all products under the brand called KooTek.

-- Sort result table rows by user name in ascending order.

-- column names of result table:
-- uname

SELECT DISTINCT u.uname
FROM user u
WHERE NOT EXISTS (
    SELECT *
    FROM product p
    WHERE p.b_id = 2
    AND NOT EXISTS (
        SELECT *
        FROM evaluation e
        WHERE e.u_id = u.u_id
        AND e.p_id = p.p_id
    )
)
ORDER BY u.uname ASC;