--Q6.
select
	Business_Type,
	sum(Sales) as TotalSales,
	sum(Expenses) as TotalExpenses,
	sum(Profit) as TotalProfit,
	avg(Profit) as AverageProfit,
	count(*) as NumberOfBusiness
from business_data
group by Business_Type

--Q7.
select
	City,
	sum(Sales) as TotalSales,
	sum(Profit) as TotalProfit,
	avg(Profit) as AverageProfit,
	count(*) as NumberOfBusiness
from business_data
group by City

--Q8.
select
	Business_Size,
	count(*) as TotalBusiness,
	sum(Employees) as TotalEmployees,
	sum(Customers) as TotalCustomers,
	sum(Sales) as TotalSales,
	sum(Profit) as TotalProfit
from business_data
group by Business_Size

--Q9.
select
	Ownership_Type,
	count(*) as NumberOfBusiness,
	sum(Sales) as TotalSales,
	sum(Profit) as TotalProfit,
	avg(Customer_Satisfaction) as AverageCustomerSatisfaction
from business_data
group by Ownership_Type

--Q10.
select
	Business_Type,
	count(*) as NumberOfBusiness,
	avg(Profit) as AverageProfit,
	sum(Profit) as TotalProfit
from Business_data
group by Business_Type
having avg(Profit) > 500000
