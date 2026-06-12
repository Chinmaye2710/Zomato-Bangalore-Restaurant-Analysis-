# Bangalore Restaurant Analytics | SQL Server & Power BI

## Overview

This project presents an end-to-end restaurant analytics solution built using SQL Server and Power BI. Starting from raw restaurant data, the project focuses on data cleaning, transformation, feature engineering, analytical modeling, and dashboard development to uncover insights about Bangalore's restaurant market.

The goal was to transform a messy real-world dataset into a structured analytical model capable of answering key business questions related to restaurant performance, customer engagement, pricing strategies, and market opportunities.

---

## Business Questions

The analysis was designed to answer questions such as:

* Which Bangalore locations have the highest restaurant concentration?
* Which locations achieve the strongest customer ratings?
* How does online ordering impact customer engagement?
* Do restaurants offering table booking perform better?
* Which pricing segments dominate the market?
* Which restaurant chains generate the highest customer engagement?
* Which restaurants provide the best balance between quality and affordability?

---

## Dataset Information

**Source:** Zomato Bangalore Restaurant Dataset (Kaggle)

| Metric                   | Value  |
| ------------------------ | ------ |
| Raw Records              | 51,717 |
| Cleaned Records          | 51,265 |
| Initial Columns          | 17     |
| Final Analytical Columns | 13     |

### Data Quality Challenges

* Missing ratings
* Duplicate restaurant records
* Mixed datatypes
* Inconsistent formatting
* Noisy and irrelevant attributes
* Repeated outlet listings

---

## Tools & Technologies

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* Power BI Desktop
* Git & GitHub

---

## Project Workflow

### Data Auditing

Initial exploration and quality assessment of the raw dataset:

* Row count validation
* Datatype inspection
* Missing value analysis
* Duplicate detection
* Schema validation

### Data Cleaning & Transformation

Prepared the dataset for analysis by:

* Removing unnecessary columns
* Cleaning rating formats
* Converting datatypes
* Handling missing values
* Standardizing cost fields
* Removing duplicate records

### Feature Engineering

Created analytical business segments:

**Rating Category**

* Excellent
* Good
* Average
* Poor
* Unrated

**Cost Bucket**

* Budget
* Affordable
* Mid-Range
* Premium
* Luxury

**Popularity Bucket**

* Low Popularity
* Moderate Popularity
* Popular
* High Popularity

### Analytical Modeling

Created a reusable analytical view:

**vw_restaurant_core**

The view centralizes:

* Cleaned restaurant data
* Engineered business features
* Analysis-ready metrics

---

## SQL Concepts Applied

### Core SQL

* SELECT
* WHERE
* GROUP BY
* HAVING
* ORDER BY
* DISTINCT
* CASE
* Aggregate Functions

### Advanced SQL

* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* PARTITION BY
* Ranking Logic
* Deduplication Techniques

### Database Design

* View Creation
* Analytical Data Modeling

---

## Power BI Data Model

A star schema was designed using the analytical SQL view.

### Fact Table

* Fact_Restaurants

### Dimension Tables

* Dim_Location
* Dim_CostBucket
* Dim_RatingCategory

The model supports scalable reporting and interactive business analysis.

---

## Dashboard Pages

### Executive Overview

Provides a high-level summary of the Bangalore restaurant market:

* Total Restaurants
* Average Rating
* Total Votes
* Average Cost
* Rating Distribution
* Cost Distribution

### Location Performance Analysis

Compares restaurant performance across locations:

* Restaurant concentration by location
* Rating vs restaurant count
* Cost vs rating analysis
* Location benchmarking

### Service & Discovery Analysis

Evaluates business models and customer behavior:

* Delivery vs non-delivery performance
* Table booking impact analysis
* Restaurant popularity analysis
* Top-performing restaurant chains
* Affordable high-rated restaurant discovery

---

## Key Insights

* Locations such as Koramangala, BTM, and Indiranagar dominate restaurant activity.
* Restaurants offering table booking consistently achieve stronger customer ratings.
* Delivery-enabled restaurants generate significantly higher customer engagement.
* Premium dining brands attract higher ratings and customer interaction.
* Several affordable restaurants maintain ratings above 4.5 while remaining highly accessible.
* Restaurant popularity is influenced by both service availability and pricing strategy.

---

## Skills Demonstrated

### SQL

* Data Auditing
* Data Cleaning
* Feature Engineering
* Window Functions
* Ranking Logic
* Analytical Query Design

### Power BI

* Star Schema Modeling
* DAX Measures
* Interactive Dashboards
* KPI Development
* Business Storytelling

### Analytics

* Market Analysis
* Customer Behavior Analysis
* Pricing Analysis
* Service Performance Analysis
* Business Recommendation Development

---

## Author

**Chinmaye Datta Kasarla**
