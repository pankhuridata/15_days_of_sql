# Payment Funnel Analysis with multiple CTE's

## Business Task
The Product Manager has requested a payment funnel analysis from the analytics team; she wants to understand what the furthest point in the payment process users are getting to and where users are falling out of the process. She wants to have full visisbility into each possible stage of payment process from the user's pov. 

Here is the payment process a user goes through when signing up for a subscription:
1. The user opens the widget to initiate payment process.
2. The user types in credit card information.
3. The user clicks the submit button to complete their part of the payment process.
4. 

#### Step 1:
- Create a Common Table Expression (CTE) named `max-status`.
- This calculates the **maxstatus** raeched per **subscriptionid** using the **statusid** column in the **paymentsatuslog** table. 
  
````sql
with max-status as (
Select 
SubscriptionID,
max(STATUSID) as maxstatus
From PaymentStatusLog
Group By SubscriptionID
)
````

````sql
with max_status as (
Select 
SubscriptionID,
max(STATUSID) as maxstatus
From PaymentStatusLog
Group By SubscriptionID
)
select
*
From Subscriptions as sub
Left Join 
max_status as ms
ON
sub.SubscriptionID = ms. SubscriptionID
````

````sql
with max_status as (
Select SubscriptionID,
max(STATUSID) as maxstatus
From PaymentStatusLog
Group By SubscriptionID
)
,
payment_funnel as(
Select 
 sub.SubscriptionID , 
 case when maxstatus = 1 then 'PaymentWidgetOpened'
		when maxstatus = 2 then 'PaymentEntered'
		when maxstatus = 3 and currentstatus = 0 then 'User Error with Payment Submission'
		when maxstatus = 3 and currentstatus != 0 then 'Payment Submitted'
		when maxstatus = 4 and currentstatus = 0 then 'Payment Processing Error with Vendor'
		when maxstatus = 4 and currentstatus != 0 then 'Payment Success'
		when maxstatus = 5 then 'Complete'
		when maxstatus is null then 'User did not start payment process'
		end as paymentfunnelstage

From Subscriptions as sub
Left Join 
max_status as ms
ON sub.SubscriptionID = ms.SubscriptionID
)

Select 
paymentfunnelstage,
count (SUBSCRIPTIONID) as Subscriptions
From payment_funnel 
Group BY paymentfunnelstage;
````
