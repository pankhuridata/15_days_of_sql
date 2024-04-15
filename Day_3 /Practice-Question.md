Question: Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
<br/> Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

<img width="192" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/c7062293-bee2-438d-9462-ad1c2f7c0dd1">

<br/>

<img width="184" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/ff5835bf-6365-4ec1-923e-013d73089aac">


``` sql
Select SUM(CITY.POPULATION) 
From COUNTRY
INNER JOIN CITY
ON
CITY.COUNTRYCODE=COUNTRY.CODE
Where COUNTRY.CONTINENT='ASIA';
```
