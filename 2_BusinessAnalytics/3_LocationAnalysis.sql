/* ============================================================
   LOCATION & BUSINESS PERFORMANCE ANALYSIS
   ZOMATO BANGALORE SQL PROJECT
   ============================================================ */


/* ------------------------------------------------------------
   Q1. Which locations have the highest restaurant concentration?
   Objective:
   Identify restaurant-dense areas in Bangalore to understand
   market concentration and competition hotspots.
------------------------------------------------------------ */

SELECT TOP 15
    location,
    COUNT(*) AS Total_Restaurants,
    AVG(rate) AS Avg_Rating
FROM vw_restaurant_core
GROUP BY location
ORDER BY Total_Restaurants DESC;



/* ------------------------------------------------------------
   Q2. Which locations have the highest average customer ratings?
   Objective:
   Find high-performing restaurant hubs by comparing locations
   with sufficient restaurant volume for reliable analysis.
------------------------------------------------------------ */

SELECT TOP 15
    location,
    COUNT(*) AS Total_Restaurants,
    CAST(ROUND(AVG(rate), 2) AS DECIMAL(4,2)) AS Avg_Rating
FROM vw_restaurant_core
WHERE rate IS NOT NULL
GROUP BY location
HAVING COUNT(*) >= 100
ORDER BY Avg_Rating DESC;



/* ------------------------------------------------------------
   Q3. Does delivery availability impact restaurant performance?
   Objective:
   Compare delivery-enabled vs non-delivery restaurants across
   ratings, popularity, and average pricing.
------------------------------------------------------------ */

SELECT
    CASE
        WHEN online_order = 1 THEN 'Delivery Available'
        ELSE 'No Delivery'
    END AS Delivery_Status,

    COUNT(*) AS Total_Restaurants,
    CAST(ROUND(AVG(rate), 2) AS DECIMAL(4,2)) AS Avg_Rating,
    CAST(ROUND(AVG(votes), 0) AS INT) AS Avg_Votes,
    CAST(ROUND(AVG(approx_cost_for_two_people), 0) AS INT) AS Avg_Cost

FROM vw_restaurant_core
GROUP BY online_order
ORDER BY Avg_Rating DESC;



/* ------------------------------------------------------------
   Q4. Does table booking correlate with better performance?
   Objective:
   Compare booking-enabled restaurants with non-booking ones
   to evaluate differences in quality, engagement, and pricing.
------------------------------------------------------------ */

SELECT
    CASE
        WHEN book_table = 1 THEN 'Booking Available'
        ELSE 'No Table Booking'
    END AS Booking_Status,

    COUNT(*) AS Total_Restaurants,
    CAST(ROUND(AVG(rate), 2) AS DECIMAL(4,2)) AS Avg_Rating,
    CAST(ROUND(AVG(votes), 0) AS INT) AS Avg_Votes,
    CAST(ROUND(AVG(approx_cost_for_two_people), 0) AS INT) AS Avg_Cost

FROM vw_restaurant_core
GROUP BY book_table
ORDER BY Avg_Rating DESC;



/* ------------------------------------------------------------
   Q5. Does higher pricing correlate with better ratings?
   Objective:
   Analyze restaurant performance across pricing segments using
   engineered cost buckets.
------------------------------------------------------------ */

SELECT
    cost_bucket,
    COUNT(*) AS Total_Restaurants,
    CAST(ROUND(AVG(rate), 2) AS DECIMAL(4,2)) AS Avg_Rating,
    CAST(ROUND(AVG(votes), 0) AS INT) AS Avg_Votes,
    CAST(ROUND(AVG(approx_cost_for_two_people), 0) AS INT) AS Avg_Cost

FROM vw_restaurant_core
WHERE rate IS NOT NULL
GROUP BY cost_bucket
ORDER BY Avg_Rating DESC;



/* ------------------------------------------------------------
   Q6. Hidden Gems Analysis
   Objective:
   Identify highly rated but lesser-known restaurants with low
   customer engagement.
------------------------------------------------------------ */

SELECT DISTINCT TOP 20
    name,
    location,
    cuisines,
    rate,
    votes,
    approx_cost_for_two_people,
    cost_bucket
FROM vw_restaurant_core
WHERE rate >= 4.5
  AND votes < 100
ORDER BY rate DESC, votes DESC;



/* ------------------------------------------------------------
   Q7. Which restaurant chains dominate by outlet presence?
   Objective:
   Identify brands with the largest footprint in Bangalore.
------------------------------------------------------------ */

SELECT TOP 15
    name,
    COUNT(*) AS Outlet_Count,
    CAST(ROUND(AVG(rate), 2) AS DECIMAL(4,2)) AS Avg_Rating,
    CAST(ROUND(AVG(votes), 0) AS INT) AS Avg_Votes,
    CAST(ROUND(AVG(approx_cost_for_two_people), 0) AS INT) AS Avg_Cost

FROM vw_restaurant_core
GROUP BY name
HAVING COUNT(*) >= 5
ORDER BY Outlet_Count DESC;



/* ------------------------------------------------------------
   Q8. Which restaurant brands attract the highest engagement?
   Objective:
   Identify brands with the strongest overall customer popularity
   based on total votes.
------------------------------------------------------------ */

SELECT TOP 15
    name,
    COUNT(*) AS Outlet_Count,
    SUM(votes) AS Total_Votes,
    CAST(ROUND(AVG(rate), 2) AS DECIMAL(4,2)) AS Avg_Rating,
    CAST(ROUND(AVG(votes), 0) AS INT) AS Avg_Votes,
    CAST(ROUND(AVG(approx_cost_for_two_people), 0) AS INT) AS Avg_Cost

FROM vw_restaurant_core
GROUP BY name
HAVING COUNT(*) >= 5
ORDER BY Total_Votes DESC;



/* ------------------------------------------------------------
   Q9. Hidden Market Opportunity Analysis
   Objective:
   Identify high-demand locations with comparatively weaker
   customer satisfaction, indicating potential market gaps.
------------------------------------------------------------ */

SELECT TOP 15
    location,
    COUNT(*) AS Total_Restaurants,
    CAST(ROUND(AVG(rate), 2) AS DECIMAL(4,2)) AS Avg_Rating,
    CAST(ROUND(AVG(votes), 0) AS INT) AS Avg_Votes,
    CAST(ROUND(AVG(approx_cost_for_two_people), 0) AS INT) AS Avg_Cost

FROM vw_restaurant_core
WHERE rate IS NOT NULL
GROUP BY location
HAVING COUNT(*) >= 100
ORDER BY Total_Restaurants DESC, Avg_Rating ASC;



-- Cuisines Analysis

SELECT TOP 15
    cuisines,
    COUNT(*) AS restaurant_count,
    CAST(ROUND(AVG(rate),2) AS DECIMAL(4,2)) AS avg_rating,
    CAST(ROUND(AVG(votes),0) AS INT) AS avg_votes,
    CAST(ROUND(AVG(approx_cost_for_two_people),0) AS INT) AS avg_cost
FROM vw_restaurant_core
WHERE cuisines IS NOT NULL
  AND rate IS NOT NULL
GROUP BY cuisines
HAVING COUNT(*) >= 20
ORDER BY avg_rating DESC, avg_votes DESC;


--ChainEfficientAnalysis
SELECT TOP 15
	name,
	COUNT(*) AS outlet_count,
	SUM(votes) AS total_votes,

	CAST(ROUND(SUM(votes)*1.0 / COUNT(*),0) AS INT) AS votes_per_outlet,
	CAST(ROUND(AVG(rate),2) AS DECIMAL(4,2)) AS avg_rating

FROM vw_restaurant_core
GROUP BY name
HAVING COUNT(*) >=5 
ORDER BY votes_per_outlet DESC

