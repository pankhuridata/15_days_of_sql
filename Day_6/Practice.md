# Question 1: Cities with Completed Trades
A Data Scientist interviewing at Robinhood was asked this SQL interview question where you need to write a SQL JOIN query to **find the top three cities that have the highest number of completed trade orders.**

trades Table:
| Column Name | Type                             |
|-------------|----------------------------------|
| order_id    | integer                          |
| user_id     | integer                          |
| price       | decimal                          |
| quantity    | integer                          |
| status      | string('Completed' ,'Cancelled') |
| timestamp   | datetime                         |   

users Table:
| Column Name | Type     |
|-------------|----------|
| user_id     | integer  |
| city        | string   |
| email       | string   |
| signup_date | datetime | 

Answer:
## First let us join the tables
``` sql
SELECT *
FROM trades
JOIN users ON
trades.user_id = users.user_id;
```
| order_id | user_id | quantity | status    | date                | price | user_id | city          | email                | signup_date         |
|----------|---------|----------|-----------|---------------------|-------|---------|---------------|----------------------|---------------------|
| 100102   | 111     | 10       | Completed | 08/17/2022 12:00:00 | 10.00 | 111     | San Francisco | rrok10@gmail.com     | 08/03/2021 12:00:00 |
| 100101   | 111     | 10       | Cancelled | 08/17/2022 12:00:00 | 9.80  | 111     | San Francisco | rrok10@gmail.com     | 08/03/2021 12:00:00 |
| 100900   | 148     | 50       | Completed | 07/14/2022 12:00:00 | 9.78  | 148     | Boston        | sailor9820@gmail.com | 08/20/2021 12:00:00 |
| 100259   | 148     | 35       | Completed | 08/25/2022 12:00:00 | 5.10  | 148     | Boston        | sailor9820@gmail.com | 08/20/2021 12:00:00 |
| 100264   | 148     | 40       | Completed | 08/26/2022 12:00:00 | 4.80  | 148     | Boston        | sailor9820@gmail.com | 08/20/2021 12:00:00 |

<br/>

## Next, we find the list of completed trade orders 
``` sql
SELECT * 
FROM trades 
LEFT JOIN users ON 
trades.user_id = users.user_id 
WHERE status = 'Completed'
```
| order_id | user_id | quantity | status    | date                | price | user_id | city          | email                | signup_date         |
|----------|---------|----------|-----------|---------------------|-------|---------|---------------|----------------------|---------------------|
| 100102   | 111     | 10       | Completed | 08/17/2022 12:00:00 | 10.00 | 111     | San Francisco | rrok10@gmail.com     | 08/03/2021 12:00:00 |
| 100900   | 148     | 50       | Completed | 07/14/2022 12:00:00 | 9.78  | 148     | Boston        | sailor9820@gmail.com | 08/20/2021 12:00:00 |
| 100259   | 148     | 35       | Completed | 08/25/2022 12:00:00 | 5.10  | 148     | Boston        | sailor9820@gmail.com | 08/20/2021 12:00:00 |
| 100264   | 148     | 40       | Completed | 08/26/2022 12:00:00 | 4.80  | 148     | Boston        | sailor9820@gmail.com | 08/20/2021 12:00:00 |

<br/>

## Finally, we need to find top 3 cities that have highest number of completed orders
```sql
SELECT city, COUNT(status) as total_orders 
FROM trades 
LEFT JOIN users ON 
trades.user_id = users.user_id 
WHERE status = 'Completed'
GROUP BY city 
Order by total_orders DESC
Limit 3;
```
| city          | total_orders |
|---------------|--------------|
| San Francisco | 4            |
| Boston        | 3            |
| Denver        | 2            |

# Question 2: Duplicate Job Listings 
Assume you're given a table containing job postings from various companies on the LinkedIn platform. Write a query to retrieve the count of companies that have posted duplicate job listings. <br/>
Definition: Duplicate job listings are defined as two job listings within the same company that share identical titles and descriptions.

job_listings Table:
| Column Name | Type    |
|-------------|---------|
| job_id      | integer |
| company_id  | integer |
| title       | string  |
| description | string  |

Answer: 
##  First, group the job listings
```sql
SELECT company_id, title, description, Count(*)
FROM job_listings
Group By company_id, title, description
Having Count(*)>1;
```
| company_id | title             | description                                                                                                                     | count |
|------------|-------------------|---------------------------------------------------------------------------------------------------------------------------------|-------|
| 827        | Data Scientist    | Data scientist uses data to understand and explain the phenomena around them, and help organizations make better decisions.     | 2     |
| 244        | Software Engineer | Software engineers design and create computer systems and applications to solve real-world problems.                            | 2     |
| 345        | Data Analyst      | Data analyst reviews data to identify key insights into a business's customers and ways the data can be used to solve problems. | 2     |

## Then, Filter for companies with duplicate job listings
- For this let us use the help of sub-query to do so
```sql
SELECT COUNT(*) AS duplicate_jobs
FROM (
    SELECT company_id, title, description
    FROM job_listings
    GROUP BY company_id, title, description
    HAVING COUNT(*) > 1
) AS dup;

```
| duplicate_jobs | 
|----------------|
| 3              | 

# Question 3: Cards Issued Difference 
Your team at JPMorgan Chase is preparing to launch a new credit card, and to gain some insights, you're analyzing how many credit cards were issued each month.

Write a query that outputs the name of each credit card and the difference in the number of issued cards between the month with the highest issuance cards and the lowest issuance. Arrange the results based on the largest disparity.

monthly_cards_issued Table:
| Column Name   | Type    |
|---------------|---------|
| issue_month   | integer |
| issue_year    | integer |
| card_name     | string  |
| issued_amount | integer |

Answer:
``` sql
SELECT card_name, MAX(issued_amount)-Min(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;
```
| card_name              | difference |
|------------------------|------------|
| Chase Sapphire Reserve | 30000      |
| Chase Freedom Flex     | 15000      |

# Question 4: App Click-through Rate 
Assume you have an events table on Facebook app analytics. Write a query to calculate the click-through rate (CTR) for the app in 2022 and round the results to 2 decimal places.
Definition and note:
- Percentage of click-through rate (CTR) = 100.0 * Number of clicks / Number of impressions.
- To avoid integer division, multiply the CTR by 100.0, not 100.

events Table:
| Column Name | Type     |
|-------------|----------|
| app_id      | integer  |
| event_type  | string   |
| timestamp   | datetime |

Answer:
```sql
SELECT 
  app_id, 
  ROUND(100.0*SUM(CASE WHEN event_type = 'click' then 1 ELSE 0 END)/SUM(CASE WHEN event_type = 'impression' then 1 ELSE 0 END), 2) AS ctr
FROM events
WHERE timestamp BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY app_id;
```
| app_id | ctr   |
|--------|-------|
| 123    | 66.67 |
| 234    | 33.33 |

# Question 5: Highest-Grossing Items
Assume you're given a table containing data on Amazon customers and their spending on products in different category, write a query to identify the top two highest-grossing products within each category in the year 2022. The output should include the category, product, and total spend.

product_spend Table:
| Column Name      | Type      |
|------------------|-----------|
| category         | string    |
| product          | string    |
| user_id          | integer   |
| spend            | decimal   |
| transaction_date | timestamp |

Answer:
## First ranking the products in each category
```sql
SELECT category,product,spend,
        RANK() OVER (PARTITION BY category ORDER BY spend DESC) AS product_rank
FROM product_spend
WHERE EXTRACT(YEAR FROM transaction_date) = 2022
```
| category    | product              | spend  | product_rank |
|-------------|----------------------|--------|--------------|
| appliance   | refrigerator         | 299.99 | 1            |
| appliance   | washing machine      | 220.00 | 2            |
| appliance   | washing machine      | 219.80 | 3            |
| appliance   | microwave            | 49.99  | 4            |
| electronics | wireless headset     | 249.90 | 1            |
| electronics | wireless headset     | 198.00 | 2            |
| electronics | vacuum               | 189.00 | 3            |
| electronics | vacuum               | 152.00 | 4            |
| electronics | vacuum               | 145.66 | 5            |
| electronics | computer mouse       | 45.00  | 6            |
| electronics | wireless headset     | 19.99  | 7            |
| electronics | 3.5mm headphone jack | 7.99   | 8            |

## Next, let us identify the top two highest-grossing products within each category 

```sql
WITH ranked_products AS (
    SELECT 
        category,
        product,
        spend,
        RANK() OVER (PARTITION BY category ORDER BY spend DESC) AS product_rank
    FROM 
        product_spend
    WHERE 
        EXTRACT(YEAR FROM transaction_date) = 2022
)
SELECT 
    category,
    product,
    spend
FROM 
    ranked_products
WHERE 
    product_rank <= 2;
```
| category    | product          | spend  |
|-------------|------------------|--------|
| appliance   | refrigerator     | 299.99 |
| appliance   | washing machine  | 220.00 |
| electronics | wireless headset | 249.90 |
| electronics | wireless headset | 198.00 |
