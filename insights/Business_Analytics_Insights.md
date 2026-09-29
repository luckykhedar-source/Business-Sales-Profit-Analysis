# Business Analytics Insights

## Project Overview

**Project:** Business Sales & Profit Analytics  
**Dataset:** `business_data.csv`  
**Records:** 300 businesses  
**Columns:** 15  

This project analyzes business performance across business type, city, business size, ownership type, customer base, sales, expenses, profit, customer satisfaction, branches, payment method, and establishment date.

The analysis was performed using SQL Server concepts including filtering, aggregation, subqueries, `CASE`, CTEs, window functions, ranking, percentage contribution, and date functions.

---

## Business Objectives

The analysis focuses on:

- Measuring overall sales, expenses, and profitability
- Comparing business performance by business type and city
- Identifying high-profit businesses
- Analyzing profit margins and operational productivity
- Comparing customer satisfaction across business groups
- Understanding payment-method and ownership patterns
- Identifying top businesses using ranking and window functions
- Analyzing business establishment trends

---

## Dataset Summary

|             Metric            |   Value     |
|-------------------------------|-------------|
| Total Businesses              | 300         |
| Total Sales                   | 763,271,796 |
| Total Expenses                | 518,597,149 |
| Total Profit                  | 244,674,647 |
| Overall Profit Margin         | 32.06%      |
| Total Employees               | 148,563     |
| Total Customers               | 1,518,150   |
| Total Branches                | 8,019       |
| Average Sales per Business    | 2,544,239   |
| Average Profit per Business   | 815,582     |
| Average Customers per Business| 5,061       |
| Average Customer Satisfaction | 3.71 / 5    |

No missing values were found in the dataset.

---

## 1. Business Type Performance

| Business Type | Businesses | Total Sales | Total Profit | Avg Profit |
|---------------|------------|-------------|--------------|------------|
| Retail        |     40     | 110,148,372 | 32,369,918   | 809,248    |
| Logistics     |     34     | 79,504,677  | 28,133,151   | 827,446    |
| Technology    |     34     | 76,561,145  | 28,013,154   | 823,916    |
| Education     |     32     | 94,322,294  | 27,971,047   | 874,095    |
| Hospitality   |     27     | 76,750,550  | 26,288,864   | 973,662    |
| Restaurant    |     31     | 77,011,980  | 25,858,227   | 834,136    |
| Healthcare    |     32     | 72,400,024  | 25,482,193   | 796,319    |
| Finance       |     24     | 61,646,463  | 17,524,211   | 730,175    |
| Manufacturing |     21     | 55,608,281  | 16,543,921   | 787,806    |
| Consulting    |     25     | 59,318,010  | 16,489,961   | 659,598    |

### Insights

- Retail generated the highest total Sales and total Profit among business types.
- Hospitality had the highest average Profit per business at approximately **973,662**.
- Consulting had the lowest average Profit among the listed business types at approximately **659,598**.
- The business-type results show that a high number of businesses does not necessarily correspond to the highest average profitability.

---

## 2. City Performance

|    City   | Businesses | Total Sales | Total Profit | Avg Profit |
|-----------|------------|-------------|--------------|------------|
| Kolkata   |     41     | 109,172,804 | 39,412,646   | 961,284    |
| Ahmedabad |     41     | 125,663,195 | 37,728,898   | 920,217    |
| Chennai   |     44     | 103,227,891 | 33,959,955   | 771,817    |
| Bengaluru |     37     | 93,480,484  | 29,479,663   | 796,748    |
| Mumbai    |     30     | 84,614,064  | 27,293,686   | 909,790    |
| Hyderabad |     40     | 88,546,957  | 26,949,747   | 673,744    |
| Delhi     |     30     | 73,581,274  | 25,456,385   | 848,546    |
| Pune      |     37     | 84,985,127  | 24,393,667   | 659,288    |

### Insights

- Kolkata generated the highest total Profit at **39.41 million**.
- Ahmedabad generated the highest total Sales at **125.66 million**.
- Kolkata also had the highest average Profit per business at approximately **961,284**.
- Pune had the lowest average Profit among the cities at approximately **659,288**.

---

## 3. Top Profit Businesses

The highest-profit businesses in the dataset include:

|   Business   |   Type     |  City  |  Sales    | Profit    |
|--------------|------------|--------|-----------|-----------|
| Business_102 | Hospitality| Kolkata| 4,786,047 | 2,542,054 |
| Business_128 | Logistics  | Delhi  | 4,868,144 | 2,536,738 |
| Business_078 | Logistics  | Delhi  | 4,644,549 | 2,422,459 |
| Business_057 | Retail     | Delhi  | 4,661,577 | 2,371,667 |
| Business_110 | Retail     | Kolkata| 4,225,019 | 2,288,722 |

These businesses demonstrate strong absolute profitability, with profits above 2.2 million.

---

## 4. Profit Margin Analysis

Overall profit margin:

**32.06%**

Profit margin was calculated as:

`Profit / Sales × 100`

Examples of businesses with high calculated profit margins include:

- Business_270 — **54.88%**
- Business_280 — **54.80%**
- Business_136 — **54.77%**
- Business_174 — **54.58%**
- Business_032 — **54.51%**

The lowest observed margins included:

- Business_273 — **10.50%**
- Business_241 — **10.55%**
- Business_282 — **10.61%**
- Business_253 — **10.61%**
- Business_093 — **10.73%**

This demonstrates why profit margin is useful in addition to absolute profit: a business can generate high profit while having a different level of profitability relative to its sales.

---

## 5. Business Size Analysis

| Business Size | Businesses | Total Sales |Total Profit| Avg Profit|
|---------------|------------|-------------|------------|-----------|
| Small         |   114      | 298,917,626 | 99,275,248 | 870,836   |
| Large         |   96       | 252,185,748 | 80,535,664 | 838,913   |
| Medium        |   90       | 212,168,422 | 64,863,735 | 720,708   |

### Insights

- Small businesses represent the largest group with **114 businesses**.
- Small businesses also generated the highest total Profit at approximately **99.28 million**.
- Medium businesses had the lowest average Profit at approximately **720,708**.

---

## 6. Ownership Analysis

|   Ownership Type    | Businesses | Total Sales | Total Profit | Avg Satisfaction |
|---------------------|------------|-------------|--------------|------------------|
| Sole Proprietorship |    75      | 198,006,763 | 64,240,140   |      3.71        |
| Private             |    75      | 193,337,377 | 60,992,071   |      3.66        |
| Partnership         |    78      | 190,294,432 | 60,580,298   |      3.71        |
| Public              |    72      | 181,633,224 | 58,862,138   |      3.77        |

### Insights

- Sole Proprietorship businesses generated the highest total Profit among ownership types.
- Partnership had the largest number of businesses with **78**.
- Public businesses had the highest average customer satisfaction at approximately **3.77**.

---

## 7. Payment Method Analysis

| Payment Method | Businesses | Total Sales | Total Profit | Avg Satisfaction |
|----------------|------------|-------------|--------------|------------------|
| UPI            |    63      | 166,535,073 | 54,449,640   |      3.60        |
| Credit Card    |    62      | 166,784,165 | 48,130,437   |      3.72        |
| Bank Transfer  |    59      | 161,206,935 | 50,015,207   |      3.87        |
| Cash           |    57      | 142,879,664 | 47,357,532   |      3.70        |
| Debit Card     |    59      | 125,865,959 | 44,721,831   |      3.69        |

### Insights

- UPI was the most common payment method with **63 businesses**.
- UPI also generated the highest total Profit at approximately **54.45 million**.
- Credit Card transactions were associated with the highest total Sales at approximately **166.78 million**.
- Bank Transfer had the highest average customer satisfaction at approximately **3.87**.

These are descriptive relationships in this dataset and should not be interpreted as causal effects.

---

## 8. Customer Analysis

The dataset contains a total customer count of **1,518,150**, with an average of approximately **5,061 customers per business**.

Businesses with Customers above the overall average can be identified using:

```sql
SELECT
    Business_Name,
    Business_Type,
    City,
    Customers
FROM business_data
WHERE Customers > (
    SELECT AVG(Customers)
    FROM business_data
);
```

---

## 9. Customer Satisfaction

Overall average customer satisfaction is approximately **3.71 / 5**.

The highest recorded satisfaction was:

- Business_179 — **4.99**

The lowest recorded satisfaction was:

- Business_281 — **2.53**

Business-type analysis can be performed using:

```sql
SELECT
    Business_Type,
    AVG(Customer_Satisfaction) AS AverageSatisfaction,
    MAX(Customer_Satisfaction) AS MaxSatisfaction,
    MIN(Customer_Satisfaction) AS MinSatisfaction
FROM business_data
GROUP BY Business_Type;
```

---

## 10. Establishment Trends

Businesses in the dataset were established between **2021 and 2026**.

| Year | Businesses Established |
|------|------------------------|
| 2021 |        57              |
| 2022 |        55              |
| 2023 |        50              |
| 2024 |        52              |
| 2025 |        61              |
| 2026 |        25              |

2025 had the highest number of establishments in the dataset with **61 businesses**.

---

## 11. Advanced SQL Analysis Performed

The project includes practical SQL analysis using:

- `WHERE`
- `ORDER BY`
- `DISTINCT`
- `IN`
- `BETWEEN`
- `GROUP BY`
- `HAVING`
- Aggregate functions
- Scalar subqueries
- Correlated subqueries
- `CASE WHEN`
- CTEs
- `JOIN`
- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()`
- `PARTITION BY`
- Window aggregates
- Running totals
- Percentage contribution
- Date functions
- `DATEADD()`
- `YEAR()` and `MONTH()`

---

## 12. Key Business Findings

1. The dataset contains **300 businesses** with total Sales of approximately **763.27 million** and total Profit of approximately **244.67 million**.
2. The overall Profit Margin is approximately **32.06%**.
3. Retail generated the highest total Profit among Business Types.
4. Hospitality had the highest average Profit per business.
5. Kolkata generated the highest total Profit among cities.
6. Ahmedabad generated the highest total Sales among cities.
7. Small businesses generated the highest total Profit among business-size categories.
8. Sole Proprietorship businesses generated the highest total Profit among ownership types.
9. UPI was the most common payment method and had the highest total Profit in this dataset.
10. Customer satisfaction averaged approximately **3.71/5** across all businesses.
11. 2025 had the highest number of business establishments in the available data.
12. Profit margin analysis shows substantial variation between individual businesses.

---

## 13. SQL Skills Demonstrated

This project demonstrates the ability to:

- Translate business requirements into SQL queries
- Analyze business performance at different aggregation levels
- Compare individual businesses with overall averages
- Compare businesses with their Business Type averages
- Rank businesses globally and within groups
- Calculate running totals
- Calculate percentage contributions
- Use CTEs for multi-step analysis
- Combine aggregated results with detailed business records
- Perform date-based analysis

---

## Project Outcome

This project demonstrates practical SQL-based business analysis using a structured business dataset. The analysis moves from basic filtering and aggregation to advanced CTEs, window functions, ranking, and comparative business metrics.

The SQL analysis can also serve as a foundation for a Power BI dashboard covering:

- Business Performance
- Sales & Profit
- City Analysis
- Business Type Analysis
- Customer Analysis
- Customer Satisfaction
- Payment Methods
- Establishment Trends
