# Zomato Bangalore Restaurant Analysis using SQL Server

## Project Overview

This project presents an end-to-end SQL analytics workflow using the Zomato Bangalore restaurant dataset. The objective was to transform messy real-world restaurant data into a clean analytical model and generate meaningful business insights using SQL Server.

The project covers the full analytics lifecycle, including data auditing, cleaning, transformation, feature engineering, analytical modeling, and business analysis.

---

## Problem Statement

Restaurant datasets often contain incomplete, inconsistent, and duplicated information, making direct analysis unreliable.

This project focuses on answering key business questions such as:

* Which locations in Bangalore have the highest restaurant concentration?
* Which locations perform best in customer satisfaction?
* Does delivery availability impact restaurant performance?
* Does table booking correlate with stronger business performance?
* Do premium restaurants consistently outperform affordable ones?
* Which restaurant brands dominate the Bangalore market?
* Where do potential market opportunities exist?

---

## Dataset Information

**Source:** Kaggle – Zomato Bangalore Restaurants Dataset

### Dataset Summary

| Metric                   | Value  |
| ------------------------ | ------ |
| Raw Records              | 51,717 |
| Cleaned Records          | 51,352 |
| Initial Columns          | 17     |
| Final Analytical Columns | 13     |

### Data Quality Challenges

The raw dataset included:

* Missing values
* Duplicate restaurant listings
* Inconsistent rating formats
* Mixed datatypes
* Noisy or irrelevant columns
* Repeated business records

---

## Tools Used

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* Kaggle Dataset

---

## Project Workflow

### Data Auditing

The initial stage focused on understanding the dataset structure and identifying quality issues before transformation.

Activities performed:

* Schema inspection
* Row count validation
* Datatype verification
* Null value analysis
* Distinct value exploration
* Duplicate detection
* Data inconsistency checks

---

### Data Cleaning and Transformation

The raw dataset required preprocessing before analysis.

Cleaning steps included:

* Removing unnecessary columns
* Standardizing restaurant rating formats
* Converting textual numeric values into appropriate datatypes
* Handling missing values
* Cleaning pricing-related fields
* Creating unique row identifiers
* Validating transformed records

This process converted raw data into an analysis-ready structure.

---

### Feature Engineering

To improve business analysis and segmentation, custom analytical features were created.

**Engineered Columns:**

**rating_category**

* Excellent
* Good
* Average
* Poor
* Unrated

**cost_bucket**

* Budget
* Affordable
* Mid-Range
* Premium
* Luxury

**popularity_bucket**

* Low Popularity
* Moderate Popularity
* Popular
* High Popularity

These engineered fields simplified segmentation and comparative analysis.

---

### Analytical Modeling

A reusable analytical SQL view was created:

**vw_restaurant_core**

This view centralizes:

* Cleaned restaurant records
* Engineered analytical features
* Business-ready restaurant metrics

This improved query readability and maintainability.

<img width="1401" height="737" alt="2_ViewCreation" src="https://github.com/user-attachments/assets/45419005-e27e-4646-9bca-7db89616c51b" />

-

## SQL Concepts Used

### Core SQL

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* HAVING
* DISTINCT
* CASE
* Aggregate Functions

### Data Transformation

* CAST()
* ROUND()
* NULL Handling
* Datatype Conversion

### Advanced SQL

* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* PARTITION BY
* Ranking Logic
* Deduplication Techniques

### Database Design

* View Creation
* Reusable Analytical Architecture

---

## Business Analysis Performed

### Market Analysis

* Restaurant concentration by location
* Highest-rated restaurant hubs
* Hidden market opportunity analysis

### Service Model Analysis

* Delivery vs non-delivery performance comparison
* Table booking vs non-booking performance analysis

### Pricing Analysis

* Pricing vs customer satisfaction analysis
* Affordable high-performing restaurant identification

  <img width="872" height="437" alt="3_Affordable_Restaurants_Analysis" src="https://github.com/user-attachments/assets/1a7f03a8-a9b4-4877-bab2-c3dd55360d6f" />


### Brand Performance Analysis

* Restaurant chains by outlet presence
* Most popular brands by total engagement
* Chain efficiency analysis using votes per outlet

### Cuisine Analysis

* Top-performing cuisine combinations by ratings and engagement




### Discovery Analysis

* Hidden gems: highly rated but lesser-known restaurants

### Advanced Ranking Analysis

* Top-performing unique restaurants by Bangalore location
<img width="816" height="737" alt="4_Top_Restaurants_Analysis" src="https://github.com/user-attachments/assets/606a9728-4d2f-44bc-b2a8-1793fbd71db7" />
---

## Key Business Insights

* Premium restaurants generally achieve stronger customer ratings and engagement than lower-priced segments.

* Restaurants offering table booking consistently outperform non-booking restaurants in ratings, popularity, and pricing.

* Affordable restaurants can still deliver exceptional customer satisfaction, proving that high quality is not limited to premium pricing.

* Premium social dining brands generate significantly higher customer engagement per outlet than mass-market chains.

* Several Bangalore locations show strong restaurant demand but weaker customer satisfaction, indicating potential market opportunities.

* Premium fusion cuisine combinations tend to outperform traditional mass-market categories in both ratings and engagement.

---

## What I Learned

This project significantly strengthened both technical SQL skills and analytical thinking.

### Technical Skills

* Auditing messy real-world datasets
* Cleaning inconsistent business data
* Handling duplicate records
* Transforming textual numeric values
* Building reusable analytical SQL views
* Applying advanced window functions
* Implementing ranking and deduplication logic

### Analytical Skills

* Translating business questions into SQL logic
* Engineering business-focused analytical metrics
* Measuring customer behavior through KPIs
* Comparing business models using data
* Identifying performance patterns and opportunity gaps
* Converting raw data into actionable insights

## Author

**Chinmaye Datta Kasarla**
