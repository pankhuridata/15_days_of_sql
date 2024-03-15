# Day 3
## Joins 
- The most beneficial features of SQL & relational database systems – the **“Join“**. A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

### INNER JOIN
- The first of the joins that we will introduce is the INNER JOIN.
- Syntax: *SELECT column, another_table_column, … </br>
           FROM mytable </br>
           INNER JOIN another_table </br>
           ON mytable.id = another_table.id </br>
           WHERE condition(s) </br>
           ORDER BY column, … ASC/DESC </br>
           LIMIT num_limit OFFSET num_offset;*  <br/>

- The INNER JOIN is a process that matches rows from the first table and the second table which have the same key (as defined by the ON constraint) to create a result row with the combined columns from both tables.
- There are many queries where the INNER JOIN is written simply as a JOIN. These two are equivalent.

## LEFT JOIN, RIGHT JOIN and FULL JOIN
- If the two tables have asymmetric data, which can easily happen when data is entered in different stages, then we would have to use a ** LEFT JOIN, RIGHT JOIN or FULL JOIN ** instead to ensure that the data you need is not left out of the results.

- Syntax: *SELECT column, another_column, …</br>
FROM mytable </br>
LEFT/RIGHT/FULL JOIN another_table </br>
    ON mytable.id = another_table.matching_id </br>
WHERE condition(s) </br>
ORDER BY column, … ASC/DESC </br>
LIMIT num_limit OFFSET num_offset;* </br>

- When joining table A to table B, a LEFT JOIN simply includes rows from A regardless of whether a matching row is found in B.
-  The RIGHT JOIN is the same, but reversed, keeping rows in B regardless of whether a match is found in A.
-  Finally, a FULL JOIN simply means that rows from both tables are kept, regardless of whether a matching row exists in the other table.



