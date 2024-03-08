## Create Table 

````sql
CREATE TABLE challenge.movies (
  ID INT NOT NULL,
  Title VARCHAR(60) NOT NULL,
  Director VARCHAR(60) NOT NULL,
  Year INT NOT NULL,
  Length_minutes INT NOT NULL,
  PRIMARY KEY (ID));
````

## Fill the Table 
````sql
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('1', 'Toy Story', 'John Lasseter', '1995', '81');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('2', 'A Bug\'s Life', 'John Lasseter', '1998', '95');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('3', 'Toy Story 2', 'John Lasseter', '1999', '93');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('4', 'Monsters, Inc.', 'Pete Docter', '2001', '92');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('5', 'Finding Nemo', 'Andrew Stanton', '2003', '107');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('6', 'The Incredibles', 'Brad Bird', '2004', '116');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('7', 'Cars', 'John Lasseter', '2006', '117');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('8', 'Ratatouille', 'Brad Bird', '2007', '115');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('9', 'WALL-E', 'Andrew Stanton', '2008', '104');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('10', 'Up', 'Pete Docter', '2009', '101');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('11', 'Toy Story 3', 'Lee Unkrich', '2010', '103');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('12', 'Cars 2', 'John Lasseter', '2011', '120');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('13', 'Brave', 'Brenda Chapman', '2012', '102');
INSERT INTO `challenge`.`movies` (`ID`, `Title`, `Director`, `Year`, `Length_minutes`) VALUES ('14', 'Monsters University', 'Dan Scanlon', '2013', '110');
````
# the table looks like this:
``` 
| customer_id | total_sales  |
|-------------|--------------|
|      A      |      76      |
|      B      |      74      |
|      C      |      36      |
```


