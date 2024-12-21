create database zomato;

select count(*) from zomato_data;



-- 1.Find the Numbers of Resturants based on City and Country.

SELECT 
    country, city, COUNT(RestaurantName) AS Restaurant_count
FROM
    zomato_data
GROUP BY city , country
ORDER BY Restaurant_count DESC;


-- 2. Numbers of Resturants opening based on Year , Quarter , Month

SELECT 
    year,
    Quarter,
    Month_Name,
    COUNT(RestaurantName) AS Restaurant_opening_count
FROM
    zomato_data
GROUP BY year , Quarter , Month_Name
ORDER BY Restaurant_opening_count DESC;


-- 3. Count of Resturants based on Ratings

SELECT 
    Rating, COUNT(RestaurantName) AS Count_of_Resturants
FROM
    zomato_data
GROUP BY rating
ORDER BY Count_of_Resturants DESC;


-- 4. Persentage of Resturants based on "Has_Table_booking"

SELECT 
    Has_Table_booking,
    COUNT(RestaurantName) AS count_of_Resturants,
    CONCAT(ROUND((COUNT(RestaurantID) / (SELECT 
                            COUNT(*)
                        FROM
                            zomato_data)) * 100,
                    1),
            '%') AS persentage_of_Resturants
FROM
    zomato_data
GROUP BY Has_Table_booking;


-- 5.Percentage of Resturants based on "Has_Online_delivery"

select has_online_delivery, COUNT(RestaurantName) AS count_of_Resturants,
    CONCAT(ROUND((COUNT(RestaurantID) / (SELECT 
                            COUNT(*)
                        FROM
                            zomato_data)) * 100,
                    1),
            '%') AS persentage_of_Resturants
FROM
    zomato_data
GROUP BY Has_Online_delivery;


-- 6. Country, Cuisines and rating based on count_of_Resturants

SELECT 
    country,
    Cuisines,
    rating,
    COUNT(RestaurantName) AS Most_of_Resturants
FROM
    zomato_data
GROUP BY Country , Cuisines, rating
ORDER BY Most_of_Resturants DESC;



-- 7. Create buckets based on Average Price of reasonable size and find out how many resturants falls in each buckets 

SELECT 
    CASE
        WHEN Average_Cost_for_two <= 100 THEN '0-100'
        WHEN Average_Cost_for_two <= 500 THEN '100-500'
        WHEN Average_Cost_for_two <= 1000 THEN '500-1000'
        WHEN Average_Cost_for_two > 1000 THEN '>1000'
    END Price_bucket,
    COUNT(restaurantid) AS Count_of_Resturants
FROM
    zomato_data
GROUP BY Price_bucket
ORDER BY Count_of_Resturants DESC;



