
--Audit File

SELECT TOP 10 *
FROM Zomato
WHERE rate IS NOT NULL
;

SELECT COUNT(*) AS TOTAL_COLUMNS
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Zomato'


SELECT
    COUNT(*) AS total_rows,

    SUM(CASE WHEN rate IS NULL THEN 1 ELSE 0 END) AS actual_rate_nulls,
    SUM(CASE WHEN rate = 'NULL' THEN 1 ELSE 0 END) AS fake_rate_nulls,
    SUM(CASE WHEN rate = 'NEW' THEN 1 ELSE 0 END) AS new_restaurants,

    SUM(CASE WHEN phone IS NULL THEN 1 ELSE 0 END) AS actual_phone_nulls,
    SUM(CASE WHEN phone = 'NULL' THEN 1 ELSE 0 END) AS fake_phone_nulls,

    SUM(CASE WHEN location IS NULL THEN 1 ELSE 0 END) AS actual_location_nulls,
    SUM(CASE WHEN location = 'NULL' THEN 1 ELSE 0 END) AS fake_location_nulls,

    SUM(CASE WHEN rest_type IS NULL THEN 1 ELSE 0 END) AS actual_resttype_nulls,
    SUM(CASE WHEN rest_type = 'NULL' THEN 1 ELSE 0 END) AS fake_resttype_nulls,

    SUM(CASE WHEN dish_liked IS NULL THEN 1 ELSE 0 END) AS actual_dish_nulls,
    SUM(CASE WHEN dish_liked = 'NULL' THEN 1 ELSE 0 END) AS fake_dish_nulls,

    SUM(CASE WHEN cuisines IS NULL THEN 1 ELSE 0 END) AS actual_cuisine_nulls,
    SUM(CASE WHEN cuisines = 'NULL' THEN 1 ELSE 0 END) AS fake_cuisine_nulls
FROM Zomato;

SELECT DISTINCT Rate 
FROM Zomato 
ORDER BY Rate

SELECT
    name,
    Address,
    COUNT(*) AS Duplicate_Val
FROM Zomato 
GROUP BY name, Address 
HAVING  COUNT(*)>1 
ORDER BY  Duplicate_Val DESC 

SELECT*
INTO Zomato_Clean
FROM Zomato