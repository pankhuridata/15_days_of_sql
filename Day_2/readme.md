## Queries with constraints 
- When writing WHERE clauses with columns containing text data, SQL supports a number of useful operators to do things like case-insensitive string comparison and wildcard pattern matching.

| Operator | Condition | Example |
| --- | --- | --- |
| =	| Case sensitive exact string comparison (notice the single equals)| col_name = "abc" |
| != or <>|	Case sensitive exact string inequality comparison | col_name != "abcd" |
| LIKE | Case insensitive exact string comparison | col_name LIKE "ABC" |
| NOT LIKE | Case insensitive exact string inequality comparison | col_name NOT LIKE "ABCD" |
| % | Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE) |	col_name LIKE "%AT%" <br/> (matches "AT", "ATTIC", "CAT" or even "BATS") |
| _	| Used anywhere in a string to match a single character (only with LIKE or NOT LIKE)	| col_name LIKE "AN_" <br/> (matches "AND", but not "AN")|
| IN (…) | String exists in a list | col_name IN ("A", "B", "C") |
| NOT IN (…) | String does not exist in a list | col_name NOT IN ("D", "E", "F")

## Filtering and Sorting Queries 
- SQL provides a convenient way to discard rows that have a duplicate column value by using the DISTINCT keyword.
- Syntax: SELECT DISTINCT column, another_column, … <br/>
FROM mytable
-  SQL provides a way to sort your results by a given column in ascending or descending order using the ORDER BY clause.
-  When an ORDER BY clause is specified, each row is sorted alpha-numerically based on the specified column's value. In some databases, you can also specify a collation to better sort data containing international text.
-  Syntax: SELECT column, another_column, … <br/>
FROM mytable <br/>
WHERE condition(s) <br/>
ORDER BY column ASC/DESC;

## Limiting results to a subset 
- Another clause which is commonly used with the ORDER BY clause are the LIMIT and OFFSET clauses, which are a useful optimization to indicate to the database the subset of the results you care about.
- The LIMIT will reduce the number of rows to return, and the optional OFFSET will specify where to begin counting the number rows from.
- Syntax: SELECT column, another_column, … <br/>
FROM mytable <br/>
WHERE condition(s) <br/>
ORDER BY column ASC/DESC <br/>
LIMIT num_limit OFFSET num_offset;

