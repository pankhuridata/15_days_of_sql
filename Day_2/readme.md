## Queries with constraints 
- When writing WHERE clauses with columns containing text data, SQL supports a number of useful operators to do things like case-insensitive string comparison and wildcard pattern matching.

| Operator | Condition | Example |
| --- | --- | --- |
| =	| Case sensitive exact string comparison (notice the single equals)| col_name = "abc" |
| != or <>|	Case sensitive exact string inequality comparison | col_name != "abcd" |
| LIKE | Case insensitive exact string comparison | col_name LIKE "ABC" |
| NOT LIKE | Case insensitive exact string inequality comparison | col_name NOT LIKE "ABCD" |
%	Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE)	col_name LIKE "%AT%" <br/> (matches "AT", "ATTIC", "CAT" or even "BATS") |
| _	| Used anywhere in a string to match a single character (only with LIKE or NOT LIKE)	col_name LIKE "AN_" <br/> (matches "AND", but not "AN")|
| IN (…) | String exists in a list | col_name IN ("A", "B", "C") |
| NOT IN (…) | String does not exist in a list | col_name NOT IN ("D", "E", "F")
