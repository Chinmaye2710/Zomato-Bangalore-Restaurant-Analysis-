--RankAnalysis

WITH Ranked_Restaurants AS(
	SELECT 
		name,
		location,
		cuisines,
		rate,
		votes,
		approx_cost_for_two_people,

		ROW_NUMBER() OVER( PARTITION BY location
					 ORDER BY rate DESC, votes DESC 
					) AS location_rank 
FROM vw_restaurant_core 
WHERE rate IS NOT NULL 
),

Unique_Restaurants AS(
	SELECT*
	FROM Ranked_Restaurants
	WHERE location_rank=1
),

ReRanked_Restaurants AS(
	SELECT*,
		ROW_NUMBER() OVER( PARTITION BY location
						   ORDER BY rate DESC , votes DESC
						) AS Final_Rank
FROM Unique_Restaurants
) 

SELECT TOP 15 *
FROM ReRanked_Restaurants
WHERE Final_rank<=3
ORDER BY location,location_rank

;
