Question: A Data Scientist interviewing at Robinhood was asked this SQL interview question where you need to write a SQL JOIN query to **find the top three cities that have the highest number of completed trade orders.**

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
