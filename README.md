**Analytics Engineering Pipeline (dbt + BigQuery)**



**Project Overview**

This project demonstrates an end-to-end analytics engineering workflow using dbt and BigQuery, transforming raw transactional data into a clean, scalable star schema and analytics-ready data models.
The project simulates a real-world retail environment, covering customers, orders, products, and store locations, and applies best practices in:
- Data modeling (star schema)
- Data transformation using dbt
- Analytics layer design
- Data quality testing
- Business metric generation

**Business Objective**

To build a reliable data pipeline that enables stakeholders to:
- Track customer purchasing behavior
- Measure revenue performance
- Analyze order frequency and retention patterns
- Support downstream BI tools (Power BI, Looker, Tableau)
 
**Data Architecture**

This project follows a modern analytics engineering architecture:
Raw CSVs (Seeds)
      ↓
Staging Layer (stg_*)
      ↓
Intermediate Layer (int_*)
      ↓
Fact Tables (fct_*)
      ↓
Analytics Layer (mart_*)

**Data Model (Star Schema)**

**Fact Table**

**fct_orders**

- order_id
- cust_id
- prod_id
- store_location_id
- order_date
- price
- quantity

**Dimension Tables**

**dim_customers** ||  **dim_products**     || **dim_store_locations**

**Tech Stack**

**dbt** (Data Build Tool) – transformation & modeling

**Google BigQuery** – data warehouse

**SQL** – transformation logic

**GitHub** – version control


**Data Ingestion**

Data is ingested using dbt seeds, ensuring:
- Version-controlled datasets
- Reproducibility
- Simplicity for local and cloud execution

**Transformation Layers**

**1. Staging Layer (stg_*)**

Data cleaning and standardization
Column renaming
Data type conversions (e.g., date formatting)

**2. Intermediate Layer (int_*)**

Joins across entities
Business logic preparation
Data normalization

**3. Fact Layer (fct_*)**

Core transactional data
No aggregation (grain = order-level)

**4. Analytics Layer (mart_*)**

**Aggregated KPIs**

Customer-level metrics
Behavioral analytics

**Key Analytics Outputs**


**Customer Metrics**

Total Orders
Total Revenue
Average Order Value (AOV)
First & Last Order Date

**Behavioral Metrics**

Days Between Orders
Purchase Frequency
Customer Retention Signals

**Key Design Decisions**


**Stable Keys**

Avoided generated keys using COUNT
Introduced:
- cust_id
- prod_id
- store_location_id

**Separation of Concerns**

dbt handles all transformations
BigQuery used only for querying

**Star Schema Modeling**

Fact table for transactions
Dimensions for descriptive attributes

**Clean SQL Practices**

No mixed aggregations + window functions in one layer
Modular, testable models

**Data Quality & Testing**

The project includes dbt tests to ensure:
No null primary keys
Referential integrity
Unique identifiers
Valid relationships between tables

**Project Structure**

models/

├── staging/ → stg_customers.sql → stg_orders.sql → stg_products.sql → stg_stores.sql


├── intermediate/
│   ├── int_orders_enriched.sql
│
├── marts/
│   ├── fct_orders.sql
│   ├── dim_customers.sql
│   ├── dim_products.sql
│   ├── dim_store_locations.sql
│   ├── mart_customer_metrics.sql
│   ├── mart_customer_behavior.sql
│
seeds/
│   ├── customers.csv
│   ├── orders.csv
│   ├── products.csv
│   ├── stores.csv


**Business Impact**

This pipeline enables:
Reliable BI dashboards 
Scalable analytics workflows 
Reusable data models 
Faster decision-making 

**What This Project Demonstrates**


**Analytics Engineering best practices** | **dbt project structuring** | **Star schema design** | **Data quality enforcement** | **SQL optimization & modularity** 
