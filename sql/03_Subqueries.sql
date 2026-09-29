--Q11.
select
	Business_name,
	Business_Type,
	City,
	Profit
from business_data
where Profit > (
select avg(Profit)
from business_data)

--Q12.
select
	Business_name,
	Business_Type,
	City,
	Sales
from business_data
where Sales > (
select avg(Sales)
from business_data)

--Q13.
select
	Business_name,
	Business_Type,
	City,
	Profit
from business_data
where Profit = (
select max(Profit)
from business_data
)

--Q14.
select
	Business_name,
	Business_Type,
	City,
	Sales
from business_data e
where Sales = (
select max(Sales)
from business_data
where Business_Type = e.Business_Type)

--Q15.
select
	Business_name,
	Business_Type,
	City,
	Customers
from business_data
where Customers > (
select avg(Customers)
from business_data)
