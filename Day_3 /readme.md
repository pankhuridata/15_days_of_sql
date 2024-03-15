# Day 3
## Joins 
- The most beneficial features of SQL & relational database systems – the **“Join“**. A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

### Inner Join
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

If the two tables have asymmetric data, which can easily happen when data is entered in different stages, then we would have to use a ** LEFT JOIN, RIGHT JOIN or FULL JOIN ** instead to ensure that the data you need is not left out of the results.

- Syntax: *SELECT column, another_column, …
FROM mytable
LEFT/RIGHT/FULL JOIN another_table 
    ON mytable.id = another_table.matching_id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;*

