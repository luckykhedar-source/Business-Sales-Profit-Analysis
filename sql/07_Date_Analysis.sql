--Q41.
select *
from business_data
where Established_Date > '2023-01-01'

--Q42.
select
	Year(Established_Date) as Year,
	count(*) as NumberOfBusiness
from business_data
group by Year(Established_Date)

--Q43.
select
	Month(Established_Date) as Month,
	count(*) as NumberOfBusiness
from business_data
group by Month(Established_Date)

--Q44.
select top 10
	Business_Name,
	Business_Type,
	City,
	Established_Date
from business_data
order by Established_Date asc

--Q45.
select
	Business_Name,
	Business_Type,
	City,
	Profit,
	Sales,
	Established_Date
from business_data
where Established_Date >= dateadd(
	Year, 
	-3, 
	(select max(Established_Date)
	from business_data)
)