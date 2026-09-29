--Q46.
select Business_Name,Business_Type,
	City, Profit
from (
select *,
	dense_rank() over(order by Profit desc	
		) as rnk
from business_data
)t
where rnk = 2
order by Profit desc

--Q47.
select Business_Name,Business_Type,
	City, Profit
from (
select *,
	dense_rank() over(partition by Business_Type
		order by Profit desc	
		) as rnk
from business_data
)t
where rnk = 2
order by Profit desc

--Q48.
with BusinessProfit as(
select
	Business_Name,
	Business_Type,
	City,
	Profit,
	avg(Profit) over() as OverallAvgProfit,
	avg(Profit) over(partition by Business_Type
		) as BusinessTypeAvgProfit
from business_data
)
select 
	Business_Name,
	Business_Type,
	City,
	Profit,
	OverallAvgProfit,
	BusinessTypeAvgProfit
from BusinessProfit
where Profit > OverallAvgProfit
and Profit > BusinessTypeAvgProfit
order by Profit desc

--Q49.
select top 1
	Business_Type,
	sum(Profit) as TotalProfit
from business_data
group by Business_Type
order by TotalProfit desc

--Q50.
with CityProfit as(
select
	City,
	avg(Profit) as AvgProfit
from business_data
group by City
),
HighestCity as(
select top 1
	City,
	AvgProfit
from CityProfit
order by AvgProfit desc
)
select
	b.Business_Name,
	b.Business_Type,
	b.City,
	b.Profit,
	h.AvgProfit
from business_data b
join HighestCity h
	on b.City = h.City
