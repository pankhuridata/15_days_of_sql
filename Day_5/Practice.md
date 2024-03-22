## Question 1: 
We are going to work with our `Employees` table. 
| Role     | Name       | Building | Years_employed |
|----------|------------|----------|----------------|
| Engineer | Becky A.   | 1e       | 4              |
| Engineer | Dan B.     | 1e       | 2              |
| Engineer | Sharon F.  | 1e       | 6              |
| Engineer | Dan M.     | 1e       | 4              |
| Engineer | Malcom S.  | 1e       | 1              |
| Artist   | Tylar S.   | 2w       | 2              |
| Artist   | Sherman D. | 2w       | 8              |
| Artist   | Jakob J.   | 2w       | 6              |
| Artist   | Lillia A.  | 2w       | 7              |
| Artist   | Brandon J. | 2w       | 7              |
| Manager  | Scott K.   | 1e       | 9              |
| Manager  | Shirlee M. | 1e       | 3              |
| Manager  | Daria O.   | 2w       | 6              |

<br/>

### Find the longest time that an employee has been at the studio
``` sql
SELECT MAX(years_employed) as Max_years_employed
FROM employees;
```
| Max_years_employed |
|--------------------|
| 9                  |

### For each role, find the average number of years employed by employees in that role
```sql
SELECT Role, AVG(years_employed)
FROM employees
Group BY Role;
```
| Role     | AVG(Years_employed) |
|----------|---------------------|
| Artist   | 6                   |
| Engineer | 3.4                 |
| Manager  | 6                   |

### Find the total number of employee years worked in each building
``` sql
SELECT Building, SUM(years_employed)
FROM employees
Group BY Building;
```
| Building | SUM(Years_employed) |
|----------|---------------------|
| 1e       | 29                  |
| 2w       | 36                  |

### Find the number of Artists in the studio (without a HAVING clause)
``` sql
SELECT Role, Count(Name)as Number
FROM employees
Where Role = 'Artist';
```
| Role   | Number |
|--------|--------|
| Artist | 5      |
