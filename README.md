
# Customer Behavior & Sales Analysis | MySQL

## Project Overview

This project focuses on analyzing customer behavior, sales performance, and product trends using MySQL.

It involves Exploratory Data Analysis (EDA) and Advanced SQL Analytics to identify meaningful business insights, understand customer purchasing patterns, evaluate product performance, and analyze sales trends.

**This project is a continuation of my previous End-to-End Data Warehouse project.**

## Project Continuation

This project builds upon my previous project:

**Project 1: End-to-End Data Warehouse | MySQL | Medallion Architecture**

In Project 1, I designed and developed a MySQL Data Warehouse using Medallion Architecture, consisting of three layers:

- **Bronze Layer:** Raw data ingestion.
- **Silver Layer:** Data cleaning, transformation, and standardization.
- **Gold Layer:** Business-ready views for analytical reporting.

In this project, I use the Gold Layer views developed in Project 1 as the primary data source to perform Exploratory Data Analysis and Advanced Data Analytics.

This demonstrates the continuation of the data workflow from data warehousing and transformation to business analysis and insight generation.

**Previous Project:** [End-to-End Data Warehouse – MySQL](https://github.com/Adarsh4518/Customer-Behavior-Sales-Analytics)

## Project Objectives

- Explore customer, product, and sales data.
- Analyze overall sales performance and business metrics.
- Identify top-performing and underperforming products.
- Understand customer distribution and purchasing behavior.
- Analyze sales trends over time.
- Perform customer and product segmentation.
- Generate business insights using SQL.

## Dataset & Data Source

The analysis uses business-ready Gold Layer views from the previous End-to-End Data Warehouse project.

The dataset includes information related to:

- Customer demographics
- Product categories and subcategories
- Sales transactions
- Order dates and quantities
- Product costs and sales amounts

An exported customer report from the Gold Layer is also included in the repository for reference.

## Tools & Technologies

- MySQL
- MySQL Workbench
- SQL
- GitHub

## Exploratory Data Analysis (EDA)

Performed exploratory analysis to understand the structure, distribution, and characteristics of the data.

Key analysis areas:

- Database exploration
- Dimension exploration
- Date exploration
- Measure exploration
- Magnitude analysis
- Ranking analysis

## Advanced Analytics

Applied advanced SQL techniques to extract deeper business insights.

Key analysis areas:

- Change-over-time analysis
- Cumulative analysis
- Running totals and moving averages
- Product performance analysis
- Part-to-whole analysis
- Product cost segmentation
- Customer segmentation (VIP, Regular, and New)

SQL concepts used:

- Common Table Expressions (CTEs)
- Window Functions
- Aggregate Functions
- LAG()
- ROW_NUMBER()
- CASE Statements
- JOINs

## Repository Structure

```text
Customer-Behavior-Sales-Analytics/
│
├── datasets/
│   └── Gold_Report_customers.csv
│
├── scripts/
│   ├── 01_eda_analysis.sql
│   └── 02_advanced_analytics.sql
│
├── reports/
│
├── README.md
└── LICENSE
```

## Key Learning Outcomes

- Gained practical experience in SQL-based exploratory analysis.
- Improved understanding of advanced SQL concepts.
- Learned to analyze customer behavior and sales performance.
- Applied analytical techniques to business-oriented problems.
- Extended an existing Data Warehouse project into a business analytics project.

---

**Project Type:** Data Analytics

**Database:** MySQL

**Author:** Adarsh Sreenivasan
