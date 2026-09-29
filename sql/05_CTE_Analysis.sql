--Q26.
with BusinessType as(
select 
	Business_Name,
	Business_Type,
	Profit,
	avg(Profit) over(partition by Business_Type
		) as AvgTypeProfit
from business_data 
)
select
	Business_Name,
	Business_Type,
	Profit,
	AvgTypeProfit
from BusinessType
where Profit > AvgTypeProfit

--Q27.
with CityPerformance as(
select
	City,
	sum(Sales) as TotalSales,
	sum(Profit) as TotalProfit,
	avg(Profit) as AverageProfit
from business_data
group by City
)
select *
from CityPerformance
where TotalProfit > 10000000

--Q28.
with ProfitRank as(
select
	Business_Name,
	Business_Type,
	Profit,
	dense_rank() over(order by 
		Profit desc) as Profit_Rank
from business_data
)
select
	Business_Name,
	Business_Type,
	Profit,
	Profit_Rank
from ProfitRank
order by Profit desc

--Q29.
with TopCity as(
select
	Business_name,
	Business_Type,
	City,
	Profit,
	dense_rank() over(partition by City
		order by Profit desc) as Rnk
from business_data
)
select
	Business_Name,
	Business_Type,
	City,
	Profit
from TopCity
where Rnk <= 3
order by Profit desc

--Q30.
with TopBusiness as(
select
	Business_Name,
	Business_Type,
	City,
	Profit,
	dense_rank() over(partition by Business_Type
		order by Profit desc) as Rnk
from business_data
)
select
	Business_Name,
	Business_Type,
	City,
	Profit
from TopBusiness
where Rnk = 1
order by Profit desc