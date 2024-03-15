# Day 3
## Joins 
- The most beneficial features of SQL & relational database systems – the **“Join“**. A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

### INNER JOIN
- The first of the joins that we will introduce is the INNER JOIN.
- Syntax: *SELECT column <br/>
          FROM TableA<br/>
          INNER JOIN TableB<br/>
          ON TableA.name = TableB.name* <br/> 

- The INNER JOIN is a process that matches rows from the first table and the second table which have the same key (as defined by the ON constraint) to create a result row with the combined columns from both tables.
</br>  
<img width="209" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/b066ff13-ae65-4d9d-bde3-c91870eccfd5">
</br>
- There are many queries where the INNER JOIN is written simply as a JOIN. These two are equivalent.

## LEFT JOIN, RIGHT JOIN and FULL JOIN
- If the two tables have asymmetric data, which can easily happen when data is entered in different stages, then we would have to use a ** LEFT JOIN, RIGHT JOIN or FULL JOIN ** instead to ensure that the data you need is not left out of the results.

- Syntax: *SELECT columns </br>
           FROM TableA </br>
           LEFT/RIGHT/FULL JOIN TableB </br>
           ON TableA.name = TableB.matching_name </br>
           WHERE condition(s) </br>
           ORDER BY column, … ASC/DESC </br>
           LIMIT num_limit OFFSET num_offset;* </br>

 - When joining table A to table B, a LEFT JOIN simply includes rows from A regardless of whether a matching row is found in B.</br>
</br>
<img width="197" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/0157bc51-80f8-4869-9ee4-0bccb441fe18">
</br>
</br>
 - The RIGHT JOIN is the same, but reversed, keeping rows in B regardless of whether a match is found in A.</br>
</br>
<img width="109" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/724c5357-67f6-4fe3-b749-3f502f18051e">
</br>
</br>
 - Finally, a FULL OUTER JOIN simply means that rows from both tables are kept, regardless of whether a matching row exists in the other table. This join type is not supported by SQLite. </br> </br>
<img width="113" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/bda67458-0ecf-4767-928f-dcfa2335a3bc">

**A little tip: Be careful with FULL OUTER JOIN as it can introduce duplicate rows to your results without you realizing!**





