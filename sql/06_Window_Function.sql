--Q31.
select
	Business_Name,
	Business_Type,
	Profit,
	avg(Profit) over(partition by Business_Type
		) as AverageTypeProfit
from business_data

--Q32.
select
	Business_Name,
	Business_Type,
	City,
	sum(Sales) over(partition
		by City ) as CityTotalSales
from business_data	

--Q33.
select
	Business_Name,
	Business_Type,
	Profit,
	rank() over(order by Profit desc) as rank,
	dense_rank() over(order by Profit desc) as dnsrnk,
	row_number() over(order by Profit desc) as rn
from business_data

--Q34.
select
	Business_Name,
	Business_Type,
	City,
	Profit,
	rank() over(partition by City
		order by Profit desc) as CityWiseRank
from business_data

--Q35.
select 
	Business_Name,
	Business_Type,
	Profit
from(
select *,
	dense_rank() over(partition by Business_Type
		order by Profit desc ) as rnk
from business_data
)t
where rnk <= 3
order by Profit desc

--Q36.
with BusinessTypeProfit as(
select
	Business_Name,
	Business_Type,
	Profit,
	sum(Profit) over(partition by
		Business_Type) as TypeTotalProfit
from business_data
)
select 
	Business_Name,
	Business_Type,
	Profit,
	TypeTotalProfit,
	Profit * 100.0 / TypeTotalProfit
		as ProfitContributionPerc
from BusinessTypeProfit

--Q37.
with BusinessTypeSales as(
select
	Business_Name,
	City,
	Sales,
	sum(Sales) over(partition by
		City) as TypeTotalSales
from business_data
)
select 
	Business_Name,
	City,
	Sales,
	TypeTotalSales,
	Sales * 100.0 / TypeTotalSales
		as SalesContributionPerc
from BusinessTypeSales

--Q38.
select
	Business_ID,
	Business_Name,
	Business_Type,
	Profit,
	sum(Profit) over(order by
		Profit desc
		rows between unbounded preceding and
		current row) as RunningTotalProfit
from business_data
order by Profit desc

--Q39.
with AverageType as(
select
	Business_Name,
	Business_Type,
	Profit,
	avg(Profit) over(partition by
		Business_Type ) as AvgTypeProfit
from business_data
)
select
	Business_name,
	Business_Type,
	Profit,
	AvgTypeProfit,
	Profit - AvgTypeProfit as diff
from AverageType

--Q40.
with HighProfit as(
select
	Business_Name,
	Business_Type,
	Profit,
	max(Profit) over(partition by
		Business_Type ) as HighestTypeProfit
from business_data
)
select
	Business_name,
	Business_Type,
	Profit,
	HighestTypeProfit,
	Profit - HighestTypeProfit as diff
from HighProfit
