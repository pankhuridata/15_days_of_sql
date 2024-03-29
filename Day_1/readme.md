# Day 1
## What is SQL?
- Structured query language (SQL) is a programming language for storing and processing information in a relational database.
- A relational database stores information in tabular form, with rows and columns representing different data attributes and the various relationships between the data values. - You can use SQL statements to store, update, remove, search, and retrieve information from the database. You can also use SQL to maintain and optimize database performance.

## What is NoSQL?
- NoSQL refers to non-relational databases that don't use tables to store data. 
- Developers store information in different types of NoSQL databases, including graphs, documents, and key-values. NoSQL databases are popular for modern applications because they are horizontally scalable. 
- Horizontal scaling means increasing the processing power by adding more computers that run NoSQL software.

## SQL vs. NoSQL
- Structured query language (SQL) provides a uniform data manipulation language, but NoSQL implementation is dependent on different technologies.
- Developers use SQL for transactional and analytical applications, whereas NoSQL is suitable for responsive, heavy-usage applications. 

## CREATE DATABASE
- The CREATE DATABASE statement is used to create a new SQL database.
- Syntax: CREATE DATABASE databasename;

## CREATE TABLE
- In the SQL database for creating a table, we use a command called CREATE TABLE.
- Syntax: CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);
  
## SELECT queries
- The SELECT Statement in SQL is used to retrieve or fetch data from a database.
- We can fetch either the entire table or according to some specified rules. The data returned is stored in a result table.
- Syntax: SELECT column1,column2 <br />
          FROM table_name 

### WHERE queries 
- In order to filter certain results from being returned, we need to use a WHERE clause in the query. The clause is applied to each row of data by checking specific column values to determine whether it should be included in the results or not.
- Syntax: SELECT column, another_column, … <br />
          FROM mytable <br />
          WHERE condition <br />
               AND/OR another_condition <br />
               AND/OR …; <br />

| Operator | Condition | SQL example |
| --- | --- | --- |
| =, !=, < <=, >, >= | Standard numerical operators | col_name != 4 |
| BETWEEN … AND … |	Number is within range of two values (inclusive) | col_name **BETWEEN** 1.5 **AND** 10.5 |
| NOT BETWEEN … AND … | Number is not within range of two values (inclusive) | col_name **NOT BETWEEN** 1 **AND** 10 |
| IN (…) | Number exists in a list |col_name **IN** (2, 4, 6) |
| NOT IN (…) | Number does not exist in a list | col_name **NOT IN** (1, 3, 5) |



