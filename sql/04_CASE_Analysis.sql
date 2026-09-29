--Q16.
select
	Business_Name,
	Profit,
	case
		when Profit >= 1500000 then 'High'
		when Profit >= 750000 then 'Medium'
		else 'Low'
	end as Profit_Category
from business_data

--Q17.
select
	Business_Name,
	Customers,
	case
		when Customers >= 8000 then 'High Customer Base'
		when Customers >= 5000 then 'Medium Customer Base'
		else 'Low Customer Base'
	end as Customer_Category
from business_data

--Q18.
select
	Business_Name,
	Business_Size,
	case
		when Business_Size = 'Small' then 'Small Business'
		when Business_Size = 'Medium' then 'Medium Business'
		else 'Large Business'
	end as Business_Size_Classification
from business_data

--Q19.
select
	Business_Name,
	Profit,
	case
		when Profit > 1000000 then 'Highly Profitable'
		when Profit > 500000 then 'Profitable'
		else 'Low Profit'
	end as Profitability_Status
from business_data

--Q20.
select
	Business_Name,
	Sales,
	Profit,
	Profit * 100.0 / nullif(Sales,0) as Profit_Margin
from business_data
order by Profit_Margin desc

--Q21.
select top 10
	Business_Name,
	Sales,
	Employees,
	Sales / Employees as SalesperEmployees
from business_data
order by SalesperEmployees desc

--Q22.
select
	Business_Name,
	Sales,
	Customers,
	Sales * 1.0 / nullif(Customers,0) as SalesperCustomer
from business_data
where Sales * 1.0/ nullif(Customers,0) > (
select avg(Sales * 1.0/ nullif(Customers,0))
from business_data)

--Q23.
select top 10
	Business_Name,
	Profit,
	Branches,
	Profit / Branches as ProfitperBranch
from business_data
order by ProfitPerBranch desc

--Q24.
select
	Business_Type,
	avg(Customer_Satisfaction) as Average_Cust_Statis,
	max(Customer_Satisfaction) as MaxSatisfaction,
	min(Customer_Satisfaction) as MinSatisfaction,
	count(*) as NumberOfBusiness
from business_data
group by Business_Type
having avg(Customer_Satisfaction) > 4.0

--Q25.
select
	Primary_Payment_Method,
	count(*) as NumberOfBusiness,
	sum(Sales) as TotalSales,
	sum(Profit) as TotalProfit,
	avg(Customer_Satisfaction) as AvgSatisfaction
from business_data
group by Primary_Payment_Method
order by TotalProfit desc