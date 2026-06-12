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
  
  <img width="1487" height="562" alt="1_DuplicatesAnalysis" src="https://github.com/user-attachments/assets/24885f7b-a543-4fc5-b743-a6a64e720e1b" />


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

<img width="1401" height="737" alt="2_ViewCreation" src="https://github.com/user-attachments/assets/be73737b-7cd0-43be-986c-499a09aade04" />


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

  <img width="816" height="737" alt="4_Top_Restaurants_Analysis" src="https://github.com/user-attachments/assets/20e01651-b60d-41b3-8cc0-d8463dcec043" />


### Database Design

* View Creation
* Analytical Data Modeling

<img width="872" height="437" alt="3_Affordable_Restaurants_Analysis" src="https://github.com/user-attachments/assets/5dcd3f8e-7e51-4656-bc39-b7cd937a0c94" />


## Power BI Data Model

A star schema was designed using the analytical SQL view.

### Fact Table

* Fact_Restaurants

### Dimension Tables

* Dim_Location
* Dim_CostBucket
* Dim_RatingCategory

The model supports scalable reporting and interactive business analysis.

<img width="1237" height="742" alt="Schema" src="https://github.com/user-attachments/assets/b4681276-3612-441a-9eff-e2760acb3f6b" />

## Dashboard Pages

### Executive Overview

Provides a high-level summary of the Bangalore restaurant market:

* Total Restaurants
* Average Rating
* Total Votes
* Average Cost
* Rating Distribution
* Cost Distribution


<img width="1282" height="723" alt="5_Bangalore Restaurant Market Overview" src="https://github.com/user-attachments/assets/79ad875d-3200-4f55-937d-173b72165244" />


### Location Performance Analysis

Compares restaurant performance across locations:

* Restaurant concentration by location
* Rating vs restaurant count
* Cost vs rating analysis
* Location benchmarking

<img width="1286" height="722" alt="6_Location Performance Analysis" src="https://github.com/user-attachments/assets/64b0719f-2f21-4108-8bba-ddfd3e7f27dc" />



### Service & Discovery Analysis

Evaluates business models and customer behavior:

* Delivery vs non-delivery performance
* Table booking impact analysis
* Restaurant popularity analysis
* Top-performing restaurant chains
* Affordable high-rated restaurant discovery

<img width="1277" height="721" alt="7_Service   Customer Experience Analysis" src="https://github.com/user-attachments/assets/b379884f-e81b-4d2a-aad4-65c88e642f16" />


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
