--DuplicateAnalysis

WITH DuplicateRemoval AS (
	SELECT*,
		ROW_NUMBER() OVER(
					 PARTITION BY 
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
                    ORDER BY ID
                ) as Rn
FROM Zomato_Clean
)

DELETE FROM DuplicateRemoval
WHERE rn>1;


SELECT TOP 30
*
FROM Zomato_Clean;