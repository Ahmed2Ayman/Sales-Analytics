# Sales-Analytics
# End-to-End Sales Analytics Data Warehouse

## Project Overview
This project demonstrates an end-to-end data engineering pipeline. Raw superstore sales data from a CSV file is ingested, transformed using dbt, and stored in a Snowflake data warehouse with a star schema. The final, clean data is then visualized in an interactive Power BI dashboard to analyze key business metrics like sales trends, regional performance, and customer segmentation.

---

## Tech Stack
- **Data Ingestion:** Snowflake Stages
- **Data Warehouse:** Snowflake ❄️
- **Data Transformation:** dbt (data build tool)
- **Data Visualization:** Power BI 📊

---

## Project Architecture

`Raw CSV File` -> `Snowflake (Raw Data Schema)` -> `dbt Transformation` -> `Snowflake (Analytics Schema - Star Schema)` -> `Power BI Dashboard`

---

## Dashboard Highlights
Here is a screenshot of the final "Sales Overview" dashboard:
<img width="682" height="389" alt="store sales" src="https://github.com/user-attachments/assets/97e8ae39-fff1-4208-9ee0-b895eb0def0e" />


**Key Insights:**
- The dashboard provides at-a-glance KPIs for total sales, orders, and customers.
- A time-series chart tracks sales performance over the years.
- A map visual highlights top-performing states, and bar/donut charts break down sales by customer segment and product category.

---

## How to Use This Project
1.  **Snowflake Setup:** The necessary `CREATE TABLE` and `COPY INTO` commands for loading the raw data are included.
2.  **dbt Project:** This repository contains the full dbt project with all models required to build the star schema. You will need to configure your own `profiles.yml` file to connect to your Snowflake instance.
3.  **Power BI:** The final `.pbix` dashboard file is included. You will need to update the data source credentials to point to your Snowflake database.
