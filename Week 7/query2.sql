-- Retrieve year of birth and name for users who have evaluated both products of a brand called KooTek and a brand called McCee.

-- Sort result table rows by the user's year of birth and name in ascending order.


-- column names of result table:
-- byear | uname

-- Do not adjust the query by using the brand ID in the selection condition.



SELECT DISTINCT u.byear, u.uname
FROM user u
INNER JOIN evaluation e ON u.u_id = e.u_id
INNER JOIN product p ON e.p_id = p.p_id
INNER JOIN brand b ON p.b_id = b.b_id
WHERE b.b_id = 1 OR b.b_id = 2
GROUP BY u.byear, u.uname
HAVING COUNT(DISTINCT b.b_id) = 2
ORDER BY u.byear, u.uname;