--retrive all customers where the result is sorted by socre (smallest firtst)
SELECT *
FROM
    customers
ORDER BY score ASC

--retrive all customers where the result is sorted by socre (higest first)
SELECT *
FROM
    customers
ORDER BY score DESC

-- REtrive all customers, sorting the result by country (alphabetically) and then by score(highest firs)
SELECT *
FROM
    customers
ORDER BY country ASC ,score DESC
