# Store Database Management System – Analytical Reporting 

## Project Overview
This project focuses on building **analytical and reporting capabilities** on top of a structured retail store database.  
It is designed to simulate a **real-world business analytics workflow**, starting from database design and data ingestion to advanced SQL-based reporting and business insights.

The project follows a **Business Requirement Document (BRD)** and demonstrates how SQL can be used to support data-driven decision-making related to sales, customers, inventory, and employee performance.

---

## Business Objectives
- Generate key sales and revenue insights
- Identify top-selling and high-revenue products
- Analyze customer purchase behavior and segmentation
- Track employee performance and productivity
- Detect inventory risks and low-stock products
- Perform advanced time-based and window-function reporting

---

## Project Structure
# Store Database Management System – Analytical Reporting 

## Project Overview
This project focuses on building **analytical and reporting capabilities** on top of a structured retail store database.  
It is designed to simulate a **real-world business analytics workflow**, starting from database design and data ingestion to advanced SQL-based reporting and business insights.

The project follows a **Business Requirement Document (BRD)** and demonstrates how SQL can be used to support data-driven decision-making related to sales, customers, inventory, and employee performance.

---

## Business Objectives
- Generate key sales and revenue insights
- Identify top-selling and high-revenue products
- Analyze customer purchase behavior and segmentation
- Track employee performance and productivity
- Detect inventory risks and low-stock products
- Perform advanced time-based and window-function reporting

---

## Project Structure

Store_Database_Project/
│
├── analysis/
│ ├── 01_sales_basics.sql
│ ├── 02_customer_analysis.sql
│ ├── 03_inventory_analysis.sql
│ ├── 04_employee_analysis.sql
│ └── 05_advanced_reporting.sql
│
├── insights/
│ ├── 01_sales_insights.md
│ ├── 02_customer_insights.md
│ ├── 03_inventory_insights.md
│ ├── 04_employee_insights.md
│ └── 05_advanced_reporting_insights.md
│
├── data/
│ └── raw_store_data/
│ ├── brands.csv
│ ├── categories.csv
│ ├── customers.csv
│ ├── order_items.csv
│ ├── orders.csv
│ ├── products.csv
│ ├── staffs.csv
│ ├── stocks.csv
│ └── stores.csv
│
├── schema_design/
│ ├── 01_create_database.sql
│ ├── 02_create_tables.sql
│ └── raw_file.sql
│
├── diagrams/
│ ├── ER_Diagram.mwb
│ └── ER_Diagram.png
│
├── docs/
│ └── Business_Requirement_Document.pdf
│
└── README.md

---

## Database Design
The database follows a **normalized relational schema** with the following core entities:
- Stores
- Products, Brands, Categories
- Customers
- Staffs
- Orders and Order Items
- Stocks (store-level inventory)

Refer to `diagrams/ER_Diagram.png` for the complete ER model.

---

## Analytical Scope

### 1. Sales Analysis
- Overall sales KPIs
- Top-selling products by quantity
- Top products by revenue
- Revenue contribution by store
- Product segmentation (volume vs revenue)

### 2. Customer Analysis
- Top customers by total spend
- Customers with no orders
- High-value customers based on frequency and spend

### 3. Inventory Management
- Low-stock product identification
- Inventory risk analysis based on demand vs supply
- Store-level inventory variation

### 4. Employee Performance
- Staff contribution by revenue
- Staff workload by orders handled
- Ranking employees using revenue-based metrics

### 5. Advanced & Time-Based Reporting
- Monthly sales trends
- Month-over-month revenue comparison
- Running total of sales
- Order sequence tracking per customer

---

## SQL Concepts Demonstrated
- Multi-table JOINs
- Aggregation functions (`SUM`, `COUNT`, `AVG`)
- Filtering using `HAVING`
- Conditional logic using `CASE`
- Window functions:
  - `ROW_NUMBER()`
  - `DENSE_RANK()`
  - `LAG()`
  - Running totals using `SUM() OVER()`
- Common Table Expressions (CTEs)

---

## Tools & Technologies
- **Database**: MySQL  
- **Query Tool**: MySQL Workbench  
- **Code Editor**: Visual Studio Code  
- **Language**: SQL  
- **Documentation**: Markdown  

---

## Key Business Insights
- Revenue is concentrated among a small subset of products, stores, and employees
- High-volume products do not always generate high revenue
- Inventory risk is demand-driven rather than stock-driven
- Employee performance varies significantly within the same store
- Time-based analysis reveals seasonality and growth fluctuations
- Customer revenue contribution is highly skewed toward a few high-value customers

---

## Project Outcome
This project delivers a **complete, BRD-compliant analytical solution** that mirrors real-world retail analytics workflows.  
It demonstrates the ability to:
- Translate business requirements into SQL queries
- Design structured analytical reports
- Extract actionable business insights from raw transactional data

---

## Author
**Digvijay Patil**  
Engineering Student | Aspiring Data Analyst / Data Scientist  

---

