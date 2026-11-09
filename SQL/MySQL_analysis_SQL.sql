CREATE DATABASE IF NOT EXISTS project3_supply_chain;
USE project3_supply_chain;

-- Q1. Confirm the number of records.
SELECT COUNT(*) AS total_records
FROM supply_chain;

-- Q2. Inspect a sample of the data.
SELECT *
FROM supply_chain
LIMIT 10;

-- Q3. Check the date range.
SELECT
    MIN(`Date`) AS first_date,
    MAX(`Date`) AS last_date,
    COUNT(DISTINCT `Date`) AS distinct_dates
FROM supply_chain;

-- Q4. Calculate overall business KPIs.
SELECT
    SUM(Units_Sold) AS total_units_sold,
    ROUND(SUM(Units_Sold * Unit_Price), 2) AS total_revenue,
    ROUND(SUM(Units_Sold * Unit_Cost), 2) AS total_cost_of_goods_sold,
    ROUND(SUM(Units_Sold * (Unit_Price - Unit_Cost)), 2) AS gross_profit,
    ROUND(
        100 * SUM(Units_Sold * (Unit_Price - Unit_Cost))
        / NULLIF(SUM(Units_Sold * Unit_Price), 0),
        2
    ) AS gross_margin_percent
FROM supply_chain;

-- Q5. Monthly revenue and units sold.
SELECT
    DATE_FORMAT(`Date`, '%Y-%m') AS sales_month,
    SUM(Units_Sold) AS total_units_sold,
    ROUND(SUM(Units_Sold * Unit_Price), 2) AS total_revenue
FROM supply_chain
GROUP BY DATE_FORMAT(`Date`, '%Y-%m')
ORDER BY sales_month;

-- Q6. Product performance: highest revenue first.
SELECT
    SKU_ID,
    SUM(Units_Sold) AS total_units_sold,
    ROUND(SUM(Units_Sold * Unit_Price), 2) AS total_revenue,
    ROUND(SUM(Units_Sold * (Unit_Price - Unit_Cost)), 2) AS gross_profit
FROM supply_chain
GROUP BY SKU_ID
ORDER BY total_revenue DESC;

-- Q7. Find products with the most observations below reorder point.
-- This is a replenishment-risk indicator, NOT a confirmed stockout count.
SELECT
    SKU_ID,
    COUNT(*) AS total_records,
    SUM(CASE WHEN Inventory_Level < Reorder_Point THEN 1 ELSE 0 END)
        AS below_reorder_records,
    ROUND(
        100 * SUM(CASE WHEN Inventory_Level < Reorder_Point THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS below_reorder_percent
FROM supply_chain
GROUP BY SKU_ID
ORDER BY below_reorder_percent DESC;

-- Q8. Supplier average lead time.
SELECT
    Supplier_ID,
    ROUND(AVG(Supplier_Lead_Time_Days), 2) AS average_lead_time_days,
    SUM(Order_Quantity) AS total_order_quantity
FROM supply_chain
GROUP BY Supplier_ID
ORDER BY average_lead_time_days DESC;

-- Q9. Warehouse performance.
SELECT
    Warehouse_ID,
    SUM(Units_Sold) AS total_units_sold,
    ROUND(SUM(Units_Sold * Unit_Price), 2) AS total_revenue,
    ROUND(
        100 * SUM(Units_Sold * (Unit_Price - Unit_Cost))
        / NULLIF(SUM(Units_Sold * Unit_Price), 0),
        2
    ) AS gross_margin_percent,
    ROUND(AVG(Inventory_Level), 2) AS average_inventory
FROM supply_chain
GROUP BY Warehouse_ID
ORDER BY total_revenue DESC;

-- Q10. Regional performance.
SELECT
    Region,
    SUM(Units_Sold) AS Total_Units_Sold,
    ROUND(SUM(Units_Sold * Unit_Price), 2) AS Total_Revenue,
    ROUND(
        SUM(Units_Sold * (Unit_Price - Unit_Cost)), 2
    ) AS Gross_Profit
FROM supply_chain
GROUP BY Region
ORDER BY Total_Revenue DESC;

-- Q11. Compare promotion and non-promotion records.
-- Descriptive comparison only; it does not prove promotions caused sales changes.
SELECT
    Promotion_Flag,
    COUNT(*) AS Record_Count,
    ROUND(AVG(Units_Sold), 2) AS Average_Units_Sold,
    ROUND(SUM(Units_Sold * Unit_Price), 2) AS Total_Revenue,
    ROUND(
        100 * SUM(Units_Sold * (Unit_Price - Unit_Cost))
        / NULLIF(SUM(Units_Sold * Unit_Price), 0),
        2
    ) AS Gross_Margin_Percentage
FROM supply_chain
GROUP BY Promotion_Flag
ORDER BY Promotion_Flag;

-- Q12. Inventory summary by warehouse.
SELECT
    Warehouse_ID,
    COUNT(*) AS Total_Records,
    ROUND(AVG(Inventory_Level), 2) AS Average_Inventory,
    SUM(CASE
        WHEN Inventory_Level < Reorder_Point THEN 1
        ELSE 0
    END) AS Below_Reorder_Records
FROM supply_chain
GROUP BY Warehouse_ID
ORDER BY Below_Reorder_Records DESC;

-- Q13. Check whether Stockout_Flag has usable variation.
SELECT
    Stockout_Flag,
    COUNT(*) AS record_count
FROM supply_chain
GROUP BY Stockout_Flag;

-- Q14. Check zero demand forecasts and sales records.
SELECT COUNT(*) AS Zero_Forecast_Records,
    SUM(CASE WHEN Units_Sold > 0 THEN 1 ELSE 0 END) AS Zero_Forecast_With_Sales
FROM supply_chain
WHERE Demand_Forecast = 0;

-- Q15. Forecast accuracy
SELECT COUNT(*) AS Valid_Forecast_Records,
    ROUND(AVG(ABS(Units_Sold - Demand_Forecast)), 2) AS Mean_Absolute_Error,
    ROUND(AVG(ABS(Units_Sold - Demand_Forecast) / NULLIF(Units_Sold, 0)) * 100, 2)
    AS Mean_Absolute_Percentage_Error
FROM supply_chain
WHERE Demand_Forecast > 0
  AND Units_Sold > 0;

-- Q16: Post-import data validation.
SELECT
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT SKU_ID) AS Unique_SKUs,
    COUNT(DISTINCT Warehouse_ID) AS Unique_Warehouses,
    COUNT(DISTINCT Supplier_ID) AS Unique_Suppliers,
    COUNT(DISTINCT Region) AS Unique_Regions,
    SUM(CASE
        WHEN Date IS NULL THEN 1
        ELSE 0
    END) AS Missing_Dates
FROM supply_chain;
