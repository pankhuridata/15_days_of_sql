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
    ELSE result_3 -- If condition_1 and condition_2 are not met, return result_3 in ELSE clause <br/>
  END; 

- The CASE statement evaluates conditions for each row, determining whether it meets the filtering criteria. Rows satisfying the conditions specified in the CASE statement are included in the result.
<br/>
- For example: Look at the table: marvel_avengers (This dataset contains information about Marvel Avengers actors and their associated social media presence.)
  
| actor              | character        | superhero_alias | platform  | followers | posts | engagement_rate | avg_likes | avg_comments |
|--------------------|------------------|-----------------|-----------|-----------|-------|-----------------|-----------|--------------|
| Robert Downey Jr.  | Tony Stark       | Iron Man        | Instagram | 500000    | 200   | 8.20            | 12000     | 800          |
| Chris Evans        | Steve Rogers     | Captain America | Twitter   | 300000    | 150   | 6.50            | 8000      | 500          |
| Scarlett Johansson | Natasha Romanoff | Black Widow     | Instagram | 700000    | 300   | 7.80            | 15000     | 1000         |
| Chris Hemsworth    | Thor             | Thor            | YouTube   | 400000    | 100   | 9.10            | 20000     | 1200         |
| Mark Ruffalo       | Bruce Banner     | Hulk            | Twitter   | 200000    | 80    | 5.30            | 6000      | 400          |



