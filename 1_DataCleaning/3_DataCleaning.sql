ALTER TABLE Zomato_Clean
ADD ID INT IDENTITY(1,1) PRIMARY KEY;

SELECT DISTINCT rate,
id
FROM Zomato_Clean
ORDER BY rate 



UPDATE Zomato_Clean 
SET rate = NULL 
WHERE rate IN ('NEW ' , '-');

UPDATE Zomato_Clean
SET rate= REPLACE(rate,' /5','/5')
WHERE rate IS NOT NULL

UPDATE Zomato_Clean 
SET rate = REPLACE(rate,'/5','')
WHERE rate IS NOT NULL 


ALTER TABLE Zomato_Clean
ALTER COLUMN rate DECIMAL(3,1);

EXEC sp_help 'Zomato_Clean';

SELECT
	COUNT(*) TOTAL_ROWS,
--	SUM( CASE WHEN dish_liked IS NULL THEN 1 ELSE 0 END)*100.0/COUNT(*) AS Dish_null,
	SUM( CASE WHEN rest_type IS NULL THEN 1 ELSE 0 END)*100.0 / COUNT(*) AS rest_type_null,
	SUM( CASE WHEN cuisines IS NULL THEN 1 ELSE 0 END)*100.0/ COUNT(*) AS Cuisines_null,
	SUM( CASE WHEN location IS NULL THEN 1 ELSE 0 END)*100.0/ COUNT(*) AS location_null 

FROM Zomato_Clean;


ALTER TABLE Zomato_Clean
DROP COLUMN url, phone, reviews_list,menu_item,dish_liked;

SELECT*
FROM Zomato_Clean;

EXEC sp_help 'Zomato_Clean'

SELECT
	SUM( case WHEN approx_cost_for_two_people IS NULL THEN 1 ELSE 0 END) AS cost_nulls
FROM Zomato_Clean;

UPDATE Zomato_Clean 
SET rest_type='Unknown'
WHERE rest_type IS NULL

DELETE FROM Zomato_Clean 
WHERE location IS NULL
	 OR cuisines IS NULL
	 OR approx_cost_for_two_people IS NULL;


SELECT COUNT(*) AS FINAL
FROM Zomato_Clean



SELECT TOP 20 
	name,
	address,
	listed_in_type,
	listed_in_city,
	COUNT(*) as cnt
FROM Zomato_Clean
GROUP BY 
	name,
	address,
	listed_in_type,
	listed_in_city
HAVING COUNT(*)>1
ORDER BY cnt DESC
;



SELECT TOP 20 
	name,
	address,
	--listed_in_type,
	--listed_in_city,
	COUNT(*) as cnt
FROM Zomato_Clean
GROUP BY 
	name,
	address
	--listed_in_type,
	--listed_in_city
HAVING COUNT(*)>1
ORDER BY cnt DESC
;



SELECT
    name,
    address,
    online_order,
    book_table,
    rate,
    votes,
    location,
    rest_type,
    cuisines,
    approx_cost_for_two_people,
    listed_in_type,
    listed_in_city,
    COUNT(*) AS cnt
FROM Zomato_Clean
GROUP BY
    name,
    address,
    online_order,
    book_table,
    rate,
    votes,
    location,
    rest_type,
    cuisines,
    approx_cost_for_two_people,
    listed_in_type,
    listed_in_city
HAVING COUNT(*) > 1


