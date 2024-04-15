# CASE Statement
- The CASE statement is SQL's way of handling if/then logic. The CASE statement is followed by at least one pair of WHEN and THEN statements—SQL's equivalent of IF/THEN in Excel.
- Every CASE statement must end with the END statement. The ELSE statement is optional, and provides a way to capture values not specified in the WHEN/THEN statements.

### Using CASE Statement in SELECT Statement
- The CASE statement in the SELECT statement is used to create new columns, categorize data, or perform calculations based on specified conditions. It helps tailor the output of your query to meet specific requirements.
- Syntax: SELECT column_1, column_2, <br/>
  CASE <br/>
    WHEN condition_1 THEN result_1 <br/>
    WHEN condition_2 THEN result_2 <br/>
    WHEN ... THEN ... <br/>
    ELSE result_3 -- _If condition_1 and condition_2 are not met, return result_3 in ELSE clause_ <br/>
  END AS column_3_name -- _Give your new column an alias_ <br/>
FROM table_1;

- The CASE statement evaluates the specified conditions sequentially and returns a value when it encounters the first true condition. If none of the conditions are met, the ELSE clause provides a default value.

### Using CASE Statement in WHERE Clause
- The CASE statement in the WHERE clause is used to filter rows based on specified conditions within the dataset.
- Syntax: SELECT column_1, column_2 <br/>
FROM table_1 <br/>
WHERE CASE <br/>
    WHEN condition_1 THEN result_1 <br/>
    WHEN condition_2 THEN result_2 <br/>
    WHEN ... THEN ... <br/>
    ELSE result_3 -- _If condition_1 and condition_2 are not met, return result_3 in ELSE clause_ <br/>
  END; 

- The CASE statement evaluates conditions for each row, determining whether it meets the filtering criteria. Rows satisfying the conditions specified in the CASE statement are included in the result.
<br/>
- For example: Look at the table: _marvel_avengers_ (This dataset contains information about Marvel Avengers actors and their associated social media presence.)
  
| actor              | character        | superhero_alias | platform  | followers | posts | engagement_rate | avg_likes | avg_comments |
|--------------------|------------------|-----------------|-----------|-----------|-------|-----------------|-----------|--------------|
| Robert Downey Jr.  | Tony Stark       | Iron Man        | Instagram | 500000    | 200   | 8.20            | 12000     | 800          |
| Chris Evans        | Steve Rogers     | Captain America | Twitter   | 300000    | 150   | 6.50            | 8000      | 500          |
| Scarlett Johansson | Natasha Romanoff | Black Widow     | Instagram | 700000    | 300   | 7.80            | 15000     | 1000         |
| Chris Hemsworth    | Thor             | Thor            | YouTube   | 400000    | 100   | 9.10            | 20000     | 1200         |
| Mark Ruffalo       | Bruce Banner     | Hulk            | Twitter   | 200000    | 80    | 5.30            | 6000      | 400          |

- Handling Multiple Conditions with CASE Statement in SELECT Statement <br/>
We can create groups using multiple conditions in the CASE statement.
``` sql
SELECT 
  actor, 
  character,
  CASE 
    WHEN engagement_rate >= 8.0 THEN 'High Engagement'
    WHEN engagement_rate BETWEEN 6.0 AND 7.9 THEN 'Moderate Engagement'
    WHEN engagement_rate < 6.0 THEN 'Low Engagement'
  END AS engagement_category
FROM marvel_avengers
WHERE platform IN ('TikTok', 'Instagram');
```
| actor              | character        | engagement_category |
|--------------------|------------------|---------------------|
| Robert Downey Jr.  | Tony Stark       | High Engagement     |
| Scarlett Johansson | Natasha Romanoff | Moderate Engagement |
| Jeremy Renner      | Clint Barton     | Moderate Engagement |
| Tom Hiddleston     | Loki             | High Engagement     |
| Zoe Saldana        | Gamora           | Low Engagement      |

- Using CASE-ELSE Clause with CASE Statement in SELECT Statement <br/>
When none of the previous conditions match, we can use the ELSE clause to provide a default value.
``` sql
SELECT
  character,
  superhero_alias,
  platform,
  CASE
    WHEN followers >= 700000 THEN 'Highly Popular'
    WHEN followers BETWEEN 300000 AND 699999 THEN 'Moderately Popular'
    ELSE 'Less Popular'
  END AS popularity_category
FROM marvel_avengers;
```
| character        | superhero_alias | platform  | popularity_category |
|------------------|-----------------|-----------|---------------------|
| Tony Stark       | Iron Man        | Instagram | Moderately Popular  |
| Steve Rogers     | Captain America | Twitter   | Moderately Popular  |
| Natasha Romanoff | Black Widow     | Instagram | Highly Popular      |
| Thor             | Thor            | YouTube   | Moderately Popular  |
| Bruce Banner     | Hulk            | Twitter   | Less Popular        |

- Counting Results using SQL COUNT() in CASE Statement <br/>
The COUNT() aggregate function within a CASE statement is used to count occurrences based on various conditions within the dataset.
```sql
SELECT
  platform,
  COUNT(CASE 
    WHEN followers >= 500000 THEN 1
    ELSE NULL
  END) AS popular_actor_count,
  COUNT(CASE 
    WHEN followers < 500000 THEN 1
    ELSE NULL
  END) AS less_popular_actor_count
FROM marvel_avengers
GROUP BY platform;
```
| platform  | popular_count | less_popular_count |
|-----------|---------------|--------------------|
| Instagram | 2             | 0                  |
| Twitter   | 0             | 2                  |
| YouTube   | 1             | 0                  |


