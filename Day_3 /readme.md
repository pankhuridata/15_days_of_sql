Use the knowledge and play this game of SQL Murder Mystery. 

Link: https://mystery.knightlab.com/

## Description: 
There's been a Murder in SQL City! A crime has taken place and the detective needs your help. The detective gave you the crime scene report, but you somehow lost it. You vaguely remember that the crime was a ​**murder**​ that occurred sometime on **​Jan.15, 2018**​ and that it took place in ​**SQL City​**. Start by retrieving the corresponding crime scene report from the police department’s database.

## Schema Diagram 
<img width="446" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/fc914add-d6bc-46c8-81bf-7fb8884cf99d">

## Let's find who committed the murder

- We know that the murder took place in SQL City on Jan 15, 2018. So let us find the description of the crime.

  ```sql
  Select *
  From crime_scene_report
  Where type='murder' and city='SQL City' ;
  ```
  
<img width="436" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/3414fa69-5235-43d0-be6c-676a7b218126">

 - As we can see there is only one murder reported on 2018/01/15 in SQL City with description about 2 witnesses. One lives at last house on **Northwestern Dr** and other lives somewhere on **Franklin Ave** named **Annabel**.

- We got the 1st witness address:
```sql
Select *
From person
Where address_street_name = "Northwestern Dr"
Order By address_number Desc
Limit 1;
```
  <img width="376" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/55bef5e1-a325-471d-9fbb-5f638a232cc5">


- We got Annabel's details:
```sql
Select *
From person
Where name like "Annabel%" and address_street_name = "Franklin Ave";
```
<img width="382" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/89279a88-cf5e-47d0-a47c-45a9eb612737">

- Now, let us get their interview transcripts
```sql
Select *
From interview
Where person_id='14887';
```
<img width="459" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/968ed8aa-2b8d-48c1-9d02-705077548795">

```sql
Select *
From interview
Where person_id='16371';
```
<img width="467" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/4e111286-3d56-44b8-bb0e-032ded9de053">

```sql
Select *
From get_fit_now_member
Where id like '48Z%'and membership_status='gold';
```
<img width="356" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/1719a343-4f48-498c-8046-27e77822ae9d">

```sql
Select *
From get_fit_now_check_in
Where check_in_date = '20180119' ;
           
```
<img width="281" alt="image" src="https://github.com/pankhuridata/15_days_of_sql/assets/109762146/e8e786e3-cead-42d4-96c3-30af34b5c8df">

 
