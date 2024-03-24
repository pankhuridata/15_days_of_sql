## Queries with aggregates

SQL also supports the use of aggregate expressions (or functions) that allow you to summarize information about a group of rows of data.
- Select query with aggregate functions over all rows
Syntax: *SELECT AGG_FUNC(column_or_expression) AS aggregate_description, … <br/>
FROM mytable <br/>
WHERE constraint_expression;* 
<br/>
Here are some common aggregate functions:

- COUNT(*), COUNT(column) -	A common function used to counts the number of rows in the group if no column name is specified. Otherwise, count the number of rows in the group with non-NULL values in the specified column.
- MIN(column) -	Finds the smallest numerical value in the specified column for all rows in the group.
-  MAX(column) - Finds the largest numerical value in the specified column for all rows in the group.
-  AVG(column) - Finds the average numerical value in the specified column for all rows in the group.
-  SUM(column) - Finds the sum of all numerical values in the specified column for the rows in the group.
<br/>

### Grouped aggregate functions
- In addition to aggregating across all the rows, you can instead apply the aggregate functions to individual groups of data within that group. This would then create as many results as there are unique groups defined as by the GROUP BY clause.

- Select query with aggregate functions over groups
Syntax: *SELECT AGG_FUNC(column_or_expression) AS aggregate_description, …
FROM mytable
WHERE constraint_expression
GROUP BY column;*

- The GROUP BY clause works by grouping rows that have the same value in the column specified.

### Having aggregate function
- One thing that you might have noticed is that if the GROUP BY clause is executed after the WHERE clause (which filters the rows which are to be grouped), then how exactly do we filter the grouped rows?

Luckily, SQL allows us to do this by adding an additional HAVING clause which is used specifically with the GROUP BY clause to allow us to filter grouped rows from the result set.
<br/>
Syntax: *SELECT group_by_column, AGG_FUNC(column_expression) AS aggregate_result_alias, … <br/>
FROM mytable <br/>
WHERE condition <br/>
GROUP BY column <br/>
HAVING group_condition;*

- If you aren't using the `GROUP BY` clause, a simple `WHERE` clause will suffice.


