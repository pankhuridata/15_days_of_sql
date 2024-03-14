Use the knowledge and play this game of SQL Murder Mystery. 

Link: https://mystery.knightlab.com/

## Description: 
There's been a Murder in SQL City! A crime has taken place and the detective needs your help. The detective gave you the crime scene report, but you somehow lost it. You vaguely remember that the crime was a ​**murder**​ that occurred sometime on **​Jan.15, 2018**​ and that it took place in ​**SQL City​**. Start by retrieving the corresponding crime scene report from the police department’s database.

## Schema Diagram 
<img width="446" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/fc914add-d6bc-46c8-81bf-7fb8884cf99d">

## Let's find who committed the murder

- We know that the murder took place in SQL City on Jan 15, 2018. So let us find the description of the crime.

  ```
  Select *
  From crime_scene_report
  Where type='murder' and city='SQL City' ;
  ```
  
<img width="436" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/3414fa69-5235-43d0-be6c-676a7b218126">
