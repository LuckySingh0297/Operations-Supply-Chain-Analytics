# 📦 Operations, Supply Chain & Inventory Analytics

An end-to-end Data Analytics project focused on analysing sales performance, inventory management, warehouse operations, supplier lead times, and demand forecasting using Excel, SQL, and Power BI.

---

## 📌 Project Overview

The objective of this project is to analyse supply chain and inventory operations to identify business performance trends, inventory replenishment risks, product performance, warehouse efficiency, and supplier lead-time patterns.

The project follows an end-to-end analytics workflow using Excel, MySQL, and Power BI.

## 🎯 Business Objectives

- Analyse monthly sales and revenue trends.
- Identify top-performing products by revenue.
- Monitor inventory levels and replenishment risks.
- Compare warehouse and regional performance.
- Evaluate supplier lead times.
- Compare promotional and non-promotional sales.
- Evaluate demand forecast accuracy.
- Develop an interactive Power BI dashboard.

---

## 📂 Dataset Information

**Dataset Name:** High-Dimensional Supply Chain Inventory Dataset

**Source:** Kaggle

**Dataset Download Link:**

👉 [Download High-Dimensional Supply Chain Inventory Dataset from Kaggle](https://www.kaggle.com/datasets/ziya07/high-dimensional-supply-chain-inventory-dataset)

**Dataset Details:**

| Description | Value |
|---|---:|
| Total Records | 91,250 |
| Total Columns | 15 |
| Unique SKUs | 50 |
| Warehouses | 5 |
| Suppliers | 10 |
| Regions | 4 |
| Analysis Period | 2024 |

### Important Dataset Note

This is a synthetic dataset. The analysis demonstrates business analytics techniques and does not represent verified performance from a real company.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data inspection and business analysis |
| Power Query | Data cleaning and preparation |
| MySQL Workbench | SQL queries and business analysis |
| Power BI | Interactive dashboard development |
| DAX | KPI calculations and measures |

---

## 🔄 Project Workflow

### 1. Data Cleaning and Preparation — Excel & Power Query

- Inspected dataset structure and column types.
- Checked missing values and duplicate records.
- Validated numeric columns.
- Corrected data types.
- Prepared the cleaned dataset for analysis.

### 2. Exploratory Data Analysis — Excel

- Overall business KPI analysis.
- Monthly revenue analysis.
- Product and SKU performance.
- Warehouse performance.
- Supplier lead-time analysis.
- Regional performance.
- Promotion comparison.
- Inventory replenishment risk analysis.

### 3. SQL Analysis — MySQL Workbench

Performed 16 SQL analysis and validation queries using:

- SELECT, WHERE and ORDER BY
- GROUP BY and aggregate functions
- CASE WHEN
- SUM, AVG and COUNT
- Conditional calculations
- Forecast error calculations
- Data validation

### 4. Dashboard Development — Power BI

Created an interactive dashboard containing KPI cards, charts, and slicers.

---

## 📊 Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Units Sold | 1,829,979 |
| Total Revenue | $33,426,337.22 |
| Total Cost of Goods Sold | $22,338,135.99 |
| Gross Profit | $11,088,201.23 |
| Gross Margin | 33.17% |
| Average Inventory | 471.52 |
| Average Supplier Lead Time | 7.98 Days |
| Below Reorder Point Records | 4,787 |
| Below Reorder Point Rate | 5.25% |

*Revenue and gross profit are calculated estimates based on the supplied sales, price, and cost fields. Gross profit excludes other operating and logistics expenses.*

---

## 🔍 Key Business Insights

### 1. Monthly Revenue Analysis

- March recorded the highest revenue at approximately $4.23 million.
- September recorded the lowest revenue at approximately $1.39 million.
- Revenue started recovering from October through December.

### 2. Product Performance

- SKU_38 generated the highest revenue at approximately $1.06 million.
- SKU_40 and SKU_11 were the next highest-revenue products.

### 3. Inventory Replenishment Risk

- SKU_14 recorded 105 below-reorder-point records.
- SKU_20 recorded 103.
- SKU_37 recorded 101.

These indicate potential replenishment risks, not confirmed stockouts.

### 4. Warehouse Performance

- WH_2 generated the highest revenue at approximately $7.40 million.
- WH_5 generated approximately $6.94 million.
- WH_1 recorded the lowest warehouse revenue at approximately $6.27 million.

### 5. Regional Performance

- North recorded the highest revenue at approximately $8.41 million.
- East, South, and West had relatively similar revenue performance.

### 6. Supplier Performance

- SUP_4 had the longest average lead time at 8.64 days.
- SUP_5 had the shortest average lead time at 6.96 days.

### 7. Promotion Analysis

| Promotion Status | Average Units Sold |
|---|---:|
| No Promotion | 19.50 |
| Promotion | 24.91 |

Promotional records had higher average units sold. This comparison does not establish that promotions caused higher sales.

### 8. Demand Forecast Analysis

- Zero forecast records: 892
- Zero forecasts with positive sales: 588
- Valid forecast records used: 90,042
- Mean Absolute Error (MAE): 2.38
- Mean Absolute Percentage Error (MAPE): 15.77%

---

## 📈 Power BI Dashboard

The interactive dashboard includes:

- Total Revenue
- Gross Profit
- Gross Margin
- Total Units Sold
- Average Inventory
- Average Supplier Lead Time
- Below Reorder Records
- Below Reorder Rate
- Monthly Revenue Trend
- Warehouse Revenue Performance
- Regional Revenue Performance
- Top 10 Products by Revenue
- Inventory Replenishment Risk
- Supplier Lead-Time Comparison
- Promotion Sales Comparison

### Interactive Filters

- Region
- Warehouse
- Supplier
- Date

---

## 💡 Business Recommendations

1. Monitor products frequently falling below reorder points.
2. Prioritise inventory planning for high-revenue products.
3. Investigate warehouse performance differences.
4. Review suppliers with longer average lead times.
5. Evaluate promotional performance using additional business context.
6. Investigate zero demand forecasts where positive sales occurred.

---

## ⚠️ Data Limitations

- The dataset is synthetic.
- `Stockout_Flag` contains only zero values, so it cannot support stockout-rate analysis.
- Below-reorder-point records indicate potential replenishment risks, not confirmed stockouts.
- Promised and actual delivery dates are unavailable, so on-time delivery cannot be measured.
- Promotion comparisons do not prove causation.
- Revenue and gross profit are estimates and exclude other operating expenses.
- Zero demand forecasts were excluded from MAPE calculations to avoid division-by-zero errors.

---

## 📁 Project Folder Structure

```text
Project3-Operations-Supply-Chain-Analytics/
│
├── README.md
│
├── Dataset/
│   ├── Cleaned_Dataset.csv
│   └── Data_Quality_Audit.xlsx
│
├── Excel/
│   ├── Business_Analysis.xlsx
│   └── Deep_Dive_Analysis.xlsx
│
├── SQL/
│   └── MySQL_Analysis_Queries.sql
│
├── PowerBI/
│   └── Operations_Supply_Chain_Dashboard.pbix
│
└── Documentation/
    └── Project_Documentation.pdf
```

*Check the dataset licence before redistributing the CSV. If redistribution is not permitted, use the original Kaggle source link instead of uploading the dataset.*

---

## 🏁 Conclusion

This project demonstrates an end-to-end business analytics workflow involving data cleaning, exploratory analysis, SQL querying, KPI development, and interactive dashboard creation.

The analysis provides insights into sales performance, product revenue, inventory replenishment risks, warehouse and regional performance, supplier lead times, and demand forecasting.

**Project Status:** Excel Analysis Completed | SQL Analysis Completed | Power BI Dashboard Developed | Final Portfolio Packaging In Progress

---

**Tools:** Excel | MySQL | Power BI | DAX

**Project Category:** Data Analytics | Business Intelligence | Supply Chain Analytics
