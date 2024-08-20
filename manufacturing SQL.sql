SELECT * FROM manufacturing_dataset_sql.`final manufacturing dataset for sql`;

-- KPI 1,2,3,4
-- Manufacture Qty
-- Rejected Qty
-- Processed Qty
-- Wastage Qty


Select Sum(Manufactured_Qty) as Total_Manufacturing_Qty from manufacturing_dataset_sql.`final manufacturing dataset for sql`;
Select Sum(Rejected_Qty) as Total_Rejected_Qty from manufacturing_dataset_sql.`final manufacturing dataset for sql`;
Select Sum(Processed_Qty) as Total_Processed_Qty from manufacturing_dataset_sql.`final manufacturing dataset for sql`;
Select Sum(Rejected_Qty) / Sum(Processed_Qty)  as Total_Wastage_Qty from manufacturing_dataset_sql.`final manufacturing dataset for sql`;

-- KPI 5
-- Employee Wise Rejected Qty

Select Emp_Name, Count(Rejected_Qty) as Total_Rejected_Qty 
from manufacturing_dataset_sql.`final manufacturing dataset for sql` group by Emp_Name order by Total_Rejected_Qty desc;

-- KPI 6
-- Machine Wise Rejected Qty

Select Machine_Name , Count(Rejected_Qty) as Total_Rejected_Qty 
from  manufacturing_dataset_sql.`final manufacturing dataset for sql` group by Machine_Name order by Total_Rejected_Qty desc;

-- KPI 7
-- Production Comparison Trend

Select Fiscal_Date, Sum(Manufactured_Qty), Sum(Rejected_Qty) from manufacturing_dataset_sql.`final manufacturing dataset for sql`
group by Fiscal_Date order by fiscal_date;

-- KPI 8
-- Manufacture Vs Rejected

Select Sum(Manufactured_Qty) as Manufacture, Sum(Rejected_Qty) as Rejected from  manufacturing_dataset_sql.`final manufacturing dataset for sql`;

-- KPI 9
-- Dept wise Manufacture Vs Reject

Select Department_Name, Sum(Manufactured_Qty) as Total_Manufactured_Qty, Sum(Rejected_Qty) as Total_Rejected_Qty 
from manufacturing_dataset_sql.`final manufacturing dataset for sql` group by Department_Name order by Department_Name;



