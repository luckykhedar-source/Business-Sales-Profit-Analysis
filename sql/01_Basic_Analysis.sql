--Q1.
select
	Business_Name,
	Business_Type,
	City,
	Profit
from business_data
where City = 'Mumbai'
order by Profit desc

--Q2.
select *
from business_data
where Sales > 3000000
and Profit > 1000000
and Customers > 5000

--Q3.
select
	Business_Name,
	Sales,
	Expenses,
	Profit
from business_data
where Sales between 100000 and 5000000

--Q4.
select 
	Business_Name,
	City,
	Business_Type,
	Profit
from business_data
where City in ('Mumbai','Delhi',
			'Bengaluru','Chennai')

--Q5.
select
	distinct 
	Business_Type,
	Business_Size,
	Ownership_Type,
	Primary_Payment_Method
from business_data		
