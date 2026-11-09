## Operations, Supply Chain & Inventory Analytics
An end-to-end business analytics portfolio project exploring sales
performance, inventory replenishment risk, warehouse and regional
performance, supplier lead times, promotions, and demand forecast
accuracy.
Dataset note: This project uses a synthetic supply-chain dataset.
Results demonstrate analytical methods and are not verified
performance from a real company.

Dataset source and download
- Original dataset: High-Dimensional Supply Chain Inventory
  Dataset ---
  Kaggle
- Dataset creator: Ziya
- GitHub copy of the CSV:
  supply_chain_dataset1.csv
- GitHub source notes: Dataset source and
  overview
The Kaggle page is the original source. The GitHub link is an alternate
copy of the CSV file. Please cite the original Kaggle dataset in your
portfolio and check its licence and terms before redistributing the
data.
Project overview
- Analysis period in the analysed file: January 1, 2024 --
  December 30, 2024
- Dataset size used in this project: 91,250 records and 15 columns
- Tools: Microsoft Excel, Power Query, MySQL Workbench, Power BI,
  and DAX
Business questions
- How does revenue change month by month?
- Which products generate the highest revenue?
- Which products most frequently fall below their reorder points?
- How do warehouses and regions compare?
- Which suppliers have the longest average lead times?
- How do average sales differ between promotion and non-promotion
  records?
- How accurate are the available demand forecasts?
Suggested repository structure
Project3-Operations-Supply-Chain-Analytics/
├── README.md
├── data/
│   ├── README.md
│   └── Project3_Cleaned_Supply_Chain_Data.csv
├── excel/
│   ├── Project3_Data_Quality_Audit.xlsx
│   ├── Project3_Excel_Business_Analysis.xlsx
│   └── Project3_Excel_Deep_Dive_Analysis.xlsx
├── sql/
│   └── Project3_MySQL_Analysis_Queries.sql
├── powerbi/
│   └── Project3_Operations_Supply_Chain_Inventory_Dashboard.pbix
└── docs/
    └── Project3_Final_Documentation.pdf
If the Kaggle licence does not permit redistribution, do not commit the
CSV. Instead, keep the dataset source link above and provide download
instructions in data/README.md.
Dataset description
The dataset contains 15 fields covering dates, product identifiers,
warehouses, suppliers, regions, units sold, inventory levels, supplier
lead times, reorder points, order quantities, unit costs, unit prices,
promotions, stockout flags, and demand forecasts.

It includes 50 unique SKUs, 5 warehouses, 10 suppliers, and 4 regions.
Workflow
1. Data inspection and preparation --- Excel / Power Query
   - Inspected row and column counts, missing values, duplicates,
     numeric ranges, and data types.
   - Prepared a cleaned dataset while preserving the original data
     separately.
2. Business analysis --- Excel
   - Built KPI summaries and breakdowns by month, SKU, warehouse,
     supplier, region, and promotion flag.
   - Investigated below-reorder-point records and demand forecast
     errors.
3. SQL analysis --- MySQL Workbench
   - Validated the imported record count and date range.
   - Used aggregation, grouping, sorting, conditional logic, and
     calculated measures.
   - Checked data quality after import.
4. Dashboard development --- Power BI
   - Created DAX measures and KPI cards.
   - Built charts for monthly revenue, product revenue, inventory
     replenishment risk, warehouse and regional performance, supplier
     lead time, and promotion comparisons.
   - Added slicers for region, warehouse, supplier, and date.
Key performance indicators
  KPI                                          Result
  Total units sold                          1,829,979
Estimated revenue                   $33,426,337.22
Estimated cost of goods sold        $22,338,135.99
Estimated gross profit              $11,088,201.23
Estimated gross margin                       33.17%
Average inventory level                      471.52
Average supplier lead time                7.98 days
Records below reorder point                   4,787
Below-reorder-point record rate               5.25%

Revenue and gross profit are calculated from units sold, unit price, and
unit cost. Gross profit is not net profit and excludes other operating
and logistics expenses.
Selected findings
- Monthly revenue: March had the highest monthly revenue
  (approximately $4.23 million), while September had the lowest
  (approximately $1.39 million). Revenue increased again from October
  through December.
- Product revenue: SKU_38 was the highest-revenue SKU at
  approximately $1.06 million.
- Inventory replenishment risk: SKU_14 had the most
  below-reorder-point records (105), followed by SKU_20 (103) and
  SKU_37 (101).
- Warehouse revenue: WH_2 had the highest revenue at approximately
  $7.40 million. WH_1 had the lowest among the five warehouses at
  approximately $6.27 million.
- Regional revenue: North led at approximately $8.41 million;
  regional revenue was relatively evenly distributed.
- Supplier lead time: SUP_4 had the longest average lead time
  (8.64 days), while SUP_5 had the shortest (6.96 days).
- Promotion comparison: Average units sold per record were 24.91
  for promotion records and 19.50 for non-promotion records. This is
  descriptive and does not establish that promotions caused higher
  sales.
- Forecast evaluation: 892 records had zero demand forecasts; 588
  of those records still had positive sales. Forecast error was
  evaluated on 90,042 records with non-zero forecasts. MAE was 2.38
  and MAPE was 15.77%.
Business recommendations
1. Review SKUs that repeatedly fall below reorder points and assess
   replenishment requirements.
2. Monitor high-revenue SKUs such as SKU_38 and SKU_40 when planning
   inventory.
3. Compare warehouse operating context before drawing conclusions from
   revenue differences.
4. Review longer-lead-time suppliers and consider whether planning
   buffers are appropriate.
5. Evaluate promotions with additional context before attributing sales
   differences to promotional activity.
6. Investigate zero demand forecasts where positive sales occurred and
   improve forecast data quality.
Important data limitations
- The dataset is synthetic.
- Stockout_Flag contains only zero values, so it cannot support a
  meaningful stockout KPI.
- A record below its reorder point is a replenishment-risk signal, not
  proof of a stockout.
- Promised and actual delivery dates are unavailable; on-time delivery
  and supplier reliability cannot be measured.
- Promotion comparisons are observational and do not prove causation.
- Revenue and gross profit are estimates based on supplied price and
  cost fields; they exclude other business expenses.
- Zero demand forecasts were excluded from MAPE to avoid
  division-by-zero errors.
How to explore the project
1. Review the Excel workbooks for data checks and business summaries.
2. Open the SQL script and execute queries against the supply_chain
   table in the project3_supply_chain database.
3. Open the .pbix file in Power BI Desktop to explore the report and
   slicers.
Project status
The Excel analysis, SQL analysis, and Power BI dashboard have been
developed. Final portfolio packaging and a final consistency review
remain.
Portfolio project: Operations, Supply Chain & Inventory Analytics
Author: Add your preferred portfolio name and profile links here.
