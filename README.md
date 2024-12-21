# Zomato_Analysis

## Zomato Excel Dashboard
This Excel dashboard provides a comprehensive analysis of Zomato's performance across various metrics and dimensions. Let's dive into the key insights:

### Table Booking
- The table booking trend shows a consistent increase from 2010 to 2014, indicating growth in Zomato's table booking feature.

### Online Delivery
- The online delivery metric shows a significant increase from 2010 to 2014, reflecting the growing adoption of Zomato's online food delivery services.

### Month-wise Restaurant Opening
- The chart shows the monthly trend of new restaurant openings on the Zomato platform. There are clear seasonal patterns, with peaks in certain months and dips in others.

### Quarter-wise Restaurant Opening
- This chart provides a quarterly view of new restaurant openings, highlighting the fluctuations across different quarters.

### Country-wise Restaurants
- The data shows the number of restaurants on Zomato's platform across different countries, with India, Brazil, and Australia being the top markets.

### Price Bucket
- The "Price Bucket" chart categorizes the restaurants on Zomato based on their price range, providing insights into the distribution of restaurants across different price points.

### Average Rating
- The dashboard includes the average rating of restaurants on Zomato, which is an important metric for understanding customer satisfaction and the overall quality of the platform.

Overall, this Zomato Analysis Dashboard offers a comprehensive view of the company's performance and growth across various dimensions, including table booking, online delivery, restaurant openings, geographical distribution, and price ranges. These insights can be valuable for understanding Zomato's business dynamics and identifying areas of focus for future growth and improvement.

![Excel Dashboard](https://github.com/user-attachments/assets/aa163272-a306-48cb-ad5b-da8116aa1b8f)


## Zomato Power BI Dashboard
### Key Metrics:
- **Total Restaurants**: 8,652
- **Total Countries**: 1
- **Total Cities**: 43
- **Average Rating**: 2.77
- **Total no. of Cuisines**: 1,392
- **Total Votes**: 1.2M

### Restaurant Data Breakdown
- **7.9% GT Count of RestaurantName by Has_Table_booking**: 14.75% of restaurants have table booking feature.
- **8.9% GT Count of RestaurantName by Has_Online_delivery**: 22.04% of restaurants offer online delivery.
- **Top 5 cities based on Cuisines**: Delhi (5.5K), Mumbai (1.1K), Bangalore (1.1K), Pune (0.8K), Chennai (0.4K)
- **Count of RestaurantName by Buckets range from 0-800000**: Most cities have 0-500 restaurants, with a few having 500-800K restaurants.

### Geographical Insights
- The dashboard covers restaurant data from India.
- The map shows the distribution of restaurants across different cities in India.

### Temporal Insights
- The "Count of RestaurantName by Year, Month and Quarter" chart shows the growth of restaurants over time, with a peak in 2018.

Overall, this dashboard provides a comprehensive overview of Zomato's restaurant data in India, including key metrics, restaurant features, city-wise distribution, and temporal trends.

![Zomato_PowerBI](https://github.com/user-attachments/assets/a2ef1e6d-7ffb-4d56-8a4c-192b08dd41fc)


## Zomato SQL Query
### KPI 1
The SQL query provided is designed to retrieve the number of restaurants categorized by city and country from a dataset named `zomato_data`. Here’s a breakdown of the query and the insights it offers:

### Query Explanation:
1. **SELECT Statement**: 
   - It selects three columns: `country`, `city`, and a count of `RestaurantName` which is aliased as `Restaurant_count`.
  
2. **FROM Clause**: 
   - Specifies the source table, `zomato_data`, from which the data is being queried.

3. **GROUP BY Clause**: 
   - Groups the results by `city` and `country`, allowing the count of restaurants to be aggregated for each unique combination of these two fields.

4. **ORDER BY Clause**: 
   - Orders the results in descending order based on the `Restaurant_count`, meaning cities with the most restaurants will appear first.

### Insights:
- The results show the number of restaurants in various cities across India.
- **Top Cities**: 
  - **New Delhi** has the highest count of restaurants (5473), indicating it is a major hub for dining options.
  - Other notable cities include **Gurgaon** (1118) and **Noida** (1080), which also have a significant number of restaurants.
- **Lower Counts**: 
  - Cities like **Ghaziabad** (25), **Guwahati** (21), and **Ahmedabad** (21) have relatively fewer dining options, suggesting they may not be as developed in terms of restaurant availability.

### Conclusion:
This query effectively highlights the distribution of restaurants across different cities in India, providing valuable insights for stakeholders in the food and hospitality industry to identify potential markets for expansion or investment.
![KPI 1](https://github.com/user-attachments/assets/1e31f2c9-3fbf-4e3f-a829-051d273f4bb6)


### KPI 2
The SQL query provided is designed to analyze the number of restaurants that opened over different years, quarters, and months from a dataset named `zomato_data`. Here’s a breakdown of the query and the insights it offers:

### Query Explanation:
1. **SELECT Statement**: 
   - It selects four columns: `year`, `Quarter`, `Month_Name`, and a count of `RestaurantName` which is aliased as `Restaurant_opening_count`.

2. **FROM Clause**: 
   - Specifies the source table, `zomato_data`, from which the data is being queried.

3. **GROUP BY Clause**: 
   - Groups the results by `year`, `Quarter`, and `Month_Name`, allowing the count of newly opened restaurants to be aggregated for each unique combination of these fields.

4. **ORDER BY Clause**: 
   - Orders the results in descending order based on the `Restaurant_opening_count`, highlighting the periods with the highest number of openings.

### Insights:
- The results indicate the number of restaurants that opened during specific months across different years.
- **Peak Openings**: 
  - The highest number of openings occurred in **March 2011** with **119** new restaurants, suggesting a significant growth period in that month.
- **Consistent Openings**: 
  - Several months across different years show a consistent count of **107** openings, indicating stable growth in those periods.
- **Trends Over Time**: 
  - The data could reveal trends in restaurant openings, helping stakeholders understand seasonal or economic factors influencing the dining market.

### Conclusion:
This query provides valuable insights into the restaurant opening trends over time, enabling businesses and investors to identify peak periods for openings and assess market dynamics in the food and hospitality sector.

![KPI 2](https://github.com/user-attachments/assets/b075da91-5567-4f14-91fc-b4d935c4fc47)


### KPI 3
The SQL query provided is designed to count the number of restaurants based on their ratings from a dataset named `zomato_data`. Here’s a breakdown of the query and the insights it offers:

### Query Explanation:
1. **SELECT Statement**: 
   - It selects two columns: `Rating` and the count of `RestaurantName`, which is aliased as `Count_of_Restaurants`.

2. **FROM Clause**: 
   - Specifies the source table, `zomato_data`, from which the data is being queried.

3. **GROUP BY Clause**: 
   - Groups the results by `rating`, allowing the count of restaurants to be aggregated for each unique rating.

4. **ORDER BY Clause**: 
   - Orders the results in descending order based on `Count_of_Restaurants`, highlighting the ratings with the highest number of associated restaurants.

### Insights:
- The results show the distribution of restaurants by their ratings:
  - **Rating 3** has the highest count with **3737** restaurants, indicating it is the most common rating among the dataset.
  - **Rating 4** follows closely with **3179** restaurants, suggesting that a significant number of restaurants are rated positively.
  - **Rating 1** has **2148** restaurants, which may indicate a substantial number of poorly rated establishments.
  - **Ratings 5 and 2** have much lower counts (301 and 186 respectively), indicating fewer restaurants achieve either very high or very low ratings.

### Conclusion:
This query provides valuable insights into the distribution of restaurant ratings, highlighting the prevalence of moderate to good ratings in the dataset. Understanding this distribution can help stakeholders identify market trends and areas for improvement in restaurant offerings.

![KPI 3](https://github.com/user-attachments/assets/737f9e8a-aa9a-41c6-a2de-2a2e7bd2653f)


### KPI 4

The SQL query provided aims to analyze the percentage of restaurants that offer table booking based on a field called `Has_Table_booking` from the `zomato_data` dataset. Here’s a breakdown of the query and the insights it offers:

### Query Explanation:
1. **SELECT Statement**: 
   - It selects two columns: `Has_Table_booking` and the count of `RestaurantName`, aliased as `count_of_Restaurants`.
   - It also calculates the percentage of restaurants that have table booking using a subquery to get the total count of restaurants.

2. **COUNT Function**: 
   - The query counts the number of restaurants for each value of `Has_Table_booking` (either "Yes" or "No").

3. **Percentage Calculation**: 
   - The percentage is calculated by dividing the count of restaurants with a specific `Has_Table_booking` status by the total count of restaurants, multiplying by 100, and formatting it as a percentage.

4. **GROUP BY Clause**: 
   - Groups the results by `Has_Table_booking`, allowing the aggregation of counts and percentages for each category.

### Insights:
- **Restaurants Without Table Booking**: 
  - **8393** restaurants (approximately **87.9%**) do not offer table booking, indicating a dominant trend in the dataset.
  
- **Restaurants With Table Booking**: 
  - Only **1158** restaurants (approximately **12.1%**) offer table booking, suggesting that this feature is not widely adopted among the restaurants in the dataset.

### Conclusion:
This query provides valuable insights into the prevalence of table booking features in restaurants. The data indicates that a significant majority of restaurants do not offer this service, which could inform marketing strategies or service enhancements for restaurant owners looking to attract more customers.

![KPI 4](https://github.com/user-attachments/assets/2e4708da-8175-4c61-afb5-b965d15988f9)


### KPI 5
The SQL query provided analyzes the percentage of restaurants that offer online delivery based on the `Has_Online_delivery` field in the `zomato_data` dataset. Here’s a breakdown of the query and the insights it provides:

### Query Explanation:
1. **SELECT Statement**: 
   - It retrieves two columns: `has_online_delivery` and the count of `RestaurantName`, which is aliased as `count_of_Restaurants`.
   - It calculates the percentage of restaurants with online delivery using a subquery to obtain the total count of restaurants.

2. **COUNT Function**: 
   - The query counts the number of restaurants for each value of `has_online_delivery` (either "Yes" or "No").

3. **Percentage Calculation**: 
   - The percentage is calculated by dividing the count of restaurants with online delivery by the total count of restaurants, multiplying by 100, and formatting it as a percentage.

4. **GROUP BY Clause**: 
   - Groups the results by `Has_Online_delivery`, allowing the aggregation of counts and percentages for each category.

### Insights:
- **Restaurants Without Online Delivery**: 
  - **7100** restaurants (approximately **74.3%**) do not offer online delivery, indicating a significant majority.
  
- **Restaurants With Online Delivery**: 
  - **2451** restaurants (approximately **25.7%**) offer online delivery, showing that a quarter of the restaurants in the dataset have adopted this feature.

### Conclusion:
This query provides insights into the adoption of online delivery services among restaurants. The data indicates that while a notable percentage of restaurants do offer online delivery, the majority still do not, suggesting potential opportunities for growth in this area for restaurant owners looking to enhance their service offerings.

![KPI 5](https://github.com/user-attachments/assets/74169231-bd7c-49cd-80a5-0086a6ed9ab4)


### KPI 6
The SQL query provided analyzes the count of restaurants based on their country, cuisine, and rating from the `zomato_data` dataset. Here’s a breakdown of the query and the insights it offers:

### Query Explanation:
1. **SELECT Statement**: 
   - It retrieves three columns: `country`, `Cuisines`, and `rating`.
   - It also counts the number of restaurants for each combination of country, cuisine, and rating, which is aliased as `Most_of_Restaurants`.

2. **COUNT Function**: 
   - The query counts the number of restaurants (`RestaurantName`) for each unique combination of `country`, `Cuisines`, and `rating`.

3. **GROUP BY Clause**: 
   - Groups the results by `Country`, `Cuisines`, and `rating`, allowing the aggregation of counts for each unique combination.

4. **ORDER BY Clause**: 
   - Orders the results in descending order based on the count of restaurants, providing a clear view of which combinations are the most prevalent.

### Insights:
- The data shows that **North Indian cuisine** is particularly popular in **India**, with the highest count of restaurants (e.g., 444 for rating 1).
- Other cuisines like **Chinese** and **Fast Food** also have significant representation, although with lower counts compared to North Indian.
- The ratings vary, with many combinations having a rating of 3, indicating a possible trend in customer satisfaction or popularity among those cuisines.

### Conclusion:
This query provides valuable insights into the distribution of restaurant types based on cuisine and rating in India. The dominance of North Indian cuisine suggests it is a key area for restaurant businesses, while the presence of other cuisines indicates a diverse food landscape. This information can guide marketing strategies and menu development for restaurant owners.

![KPI 6](https://github.com/user-attachments/assets/3f6536f3-b8bf-4c29-b647-6ce002b83315)


### KPI 7
The SQL query provided categorizes restaurants into price buckets based on their average cost for two people and counts how many restaurants fall into each bucket. Here’s a breakdown of the query and the insights it provides:

### Query Explanation:
1. **SELECT Statement**: 
   - Uses a `CASE` statement to create price buckets based on the `Average_Cost_for_two` values.
   - The buckets are defined as follows:
     - `'0-100'`: Average cost up to 100
     - `'100-500'`: Average cost between 101 and 500
     - `'500-1000'`: Average cost between 501 and 1000
     - `'>1000'`: Average cost above 1000

2. **COUNT Function**: 
   - Counts the number of restaurants (`restaurantid`) that fall into each price bucket.

3. **FROM Clause**: 
   - Specifies the `zomato_data` dataset as the source of data.

4. **GROUP BY Clause**: 
   - Groups the results by `Price_bucket`, allowing for aggregation of counts for each bucket.

5. **ORDER BY Clause**: 
   - Orders the results in descending order based on the count of restaurants.

### Insights:
- The **largest bucket** is **'100-500'** with **5038** restaurants, indicating this is the most common price range for dining out.
- The **second largest** is **'500-1000'** with **2302** restaurants, showing a significant number of options in this mid-range price category.
- The **'0-100'** bucket has **1036** restaurants, suggesting a decent selection for budget-conscious diners.
- The **' >1000'** bucket contains **1175** restaurants, indicating a smaller but notable number of high-end dining options.

### Conclusion:
This query provides insights into the pricing landscape of restaurants. The dominance of the **'100-500'** price range suggests it caters to a wide audience, while the presence of higher-priced options indicates a healthy selection for premium dining experiences. This information can help restaurant owners and marketers understand market positioning and customer preferences.

![KPI 7](https://github.com/user-attachments/assets/ae8b686b-f90e-49d9-ae17-5bea3564b6b9)


## Zomato Tableau Dashboard

## Overview
The dashboard provides a comprehensive analysis of Zomato's business performance across various countries and cities. It includes key performance indicators (KPIs), restaurant distribution, and delivery statistics.

## Key Insights
1. **Country-wise Performance**:
   - The dashboard shows that India has the highest KPI-9 value, indicating strong business performance in the country.
   - Other countries with notable presence include the USA, Brazil, South Africa, and Australia.

2. **City-wise Analysis**:
   - The top cities displayed are Mumbai, Delhi, and Bengaluru, suggesting these are major markets for Zomato.
   - The "Quarter Restaurant Name" section provides a breakdown of the top restaurant names in the selected quarter.

3. **Delivery Statistics**:
   - The "Has Online Delivery" KPI shows the percentage of restaurants with online delivery capabilities.
   - The "Distinct count of Restaurant Name" metric indicates the total number of unique restaurants on the Zomato platform.

4. **Geographical Representation**:
   - The world map visualizes the global presence of Zomato, with markers indicating the locations of restaurants.
   - The map highlights the concentration of Zomato's operations in countries like India, the USA, Brazil, and South Africa.

Overall, the Zomato Analysis Dashboard provides a comprehensive view of the company's performance, market share, and geographical expansion, enabling data-driven decision-making.

![Zomato_Tableau](https://github.com/user-attachments/assets/5462000e-779c-4c9d-af5e-985556876f2d)




