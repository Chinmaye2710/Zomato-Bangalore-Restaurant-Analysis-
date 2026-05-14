CREATE VIEW vw_restaurant_core AS
	SELECT 
		ID,
		name,
		location,
		rest_type,
		cuisines,
		online_order,
		book_table,
		rate,
		votes,
		approx_cost_for_two_people,
		listed_in_type,
		listed_in_city ,
		CASE 
			WHEN rate IS NULL THEN 'Unrated'
			WHEN rate>=4.5 THEN 'Excellent'
			WHEN rate>=4.0 THEN 'Good'
			WHEN rate>=3.0 THEN 'Average'
			ELSE 'Poor'
		END AS rating_category,



		CASE 
			WHEN approx_cost_for_two_people <=300 THEN 'Budget'
			WHEN approx_cost_for_two_people <=600 THEN 'Affordable'
			WHEN approx_cost_for_two_people <=1000 THEN 'Mid-Range'
			WHEN approx_cost_for_two_people <=2000 THEN 'Premium'
			ELSE 'Luxury'
		END AS cost_bucket,

		CASE 
			WHEN votes<=50 THEN 'Low Popularity'
			WHEN votes<=200 THEN 'Moderate Popularity'
			WHEN votes<=1000 THEN 'Popular'
			ELSE 'High Popular'
		END AS popularity_bucket
FROM Zomato_Clean
;

SELECT*
FROM vw_restaurant_core