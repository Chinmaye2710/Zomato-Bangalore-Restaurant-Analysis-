--AffordableRestaurant
WITH AffordableRestaurant AS(
SELECT
    name,
    cuisines,
    rate,
    votes,
    approx_cost_for_two_people,
    cost_bucket,
    ROW_NUMBER() OVER(
                        PARTITION BY name
                        ORDER BY rate DESC , votes DESC
                        ) AS rn
FROM vw_restaurant_core 
WHERE rate>=4.2 AND  approx_cost_for_two_people<=500
)

SELECT TOP 20*
FROM AffordableRestaurant
WHERE rn=1
ORDER BY rate DESC , votes DESC ;