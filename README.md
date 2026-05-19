# Retail Profitability & Customer Analytics

Cloud-based retail analytics case study using SQL, BigQuery, Tableau, and Python to analyze customer behavior, profitability, promotional effectiveness, and regional performance.

---

# Project Overview

This project analyzes retail transaction and customer purchasing data to identify revenue drivers, customer purchasing behavior, promotional effectiveness, category performance, and regional market trends.

The analysis was structured as an end-to-end analytics workflow beginning with SQL-based data auditing and transformation in BigQuery, followed by analytical enrichment, business intelligence visualization, and future predictive modeling opportunities in Python.

---

# Business Objectives

This analysis was designed to answer the following business questions:

- Which customer demographics generate the highest revenue?
- Do discounts and promotions meaningfully increase purchasing behavior?
- Which product categories drive the strongest financial performance?
- How do purchasing trends vary across customer segments and geographic regions?
- Which customer groups demonstrate the strongest loyalty behavior?
- How can the business optimize merchandising and promotional strategies?

---

# Tools & Technologies

| Tool | Purpose |
|------|----------|
| BigQuery | Cloud-based SQL analysis and transformation |
| SQL | Data auditing, cleaning, enrichment, and business analysis |
| Tableau | Business intelligence dashboards and visual storytelling |
| Python | Planned predictive analytics and simulation modeling |
| GitHub | Project documentation and portfolio management |
| Keynote / Presentation Design | Executive-level insight communication |

---

# Workflow

Raw Data  
→ SQL Data Auditing  
→ SQL Cleaning & Transformation  
→ Analytical Enrichment  
→ Business Analysis  
→ Tableau Visualization  
→ Python Modeling (Planned)  
→ Executive Presentation

---

# SQL Analysis

The SQL portion of the project focused on building a structured analytical workflow using BigQuery.

## Data Audit
- Validated schema structure and field datatypes
- Reviewed missing values and dataset completeness
- Performed duplicate transaction audits
- Evaluated categorical consistency across dimensions

## Data Cleaning & Transformation
- Standardized inconsistent field naming conventions
- Built analytical segmentation layers using SQL CASE statements
- Created customer demographic and loyalty dimensions
- Developed geographic regional mapping logic for market analysis

## Analytical Enrichment
Additional business-ready dimensions were created, including:

- Age Groups
- Spending Tiers
- Loyalty Segments
- Regional Market Classifications

---

## Interactive Tableau Dashboard

Explore the live interactive Tableau dashboard below:

[View Live Tableau Dashboard](https://public.tableau.com/views/ConsumerSpendingGeographicSalesAnalysis/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link))

![Retail Profitability Dashboard](images/dashboard_preview.png)

The dashboard provides executive-style visibility into:
- Retail profitability trends
- Regional and state-level sales performance
- Customer purchasing behavior
- Subscriber vs. non-subscriber sales analysis
- Product category performance KPIs

Retail Profitability Dashboard


---

# Key Business Insights

## Customer Segmentation
- Customers aged 55+ generated the highest overall revenue contribution across product categories.
- Medium-loyalty customers produced the strongest aggregate revenue contribution.

## Promotional Effectiveness
- Discounts and promo codes showed limited impact on increasing average purchase value.
- Findings suggest opportunities to optimize targeted promotional strategies rather than broad discounting.

## Category Performance
- Clothing generated the highest revenue contribution primarily through transaction volume rather than premium purchase value.
- Footwear demonstrated strong average purchase value and customer satisfaction despite lower transaction volume.

## Geographic Trends
- Regional segmentation enabled more strategic market analysis and customer concentration evaluation.
- Geographic enrichment created opportunities for future regional performance modeling.


---

# Future Enhancements

Planned future enhancements include:

- Python-based customer lifecycle simulations
- Predictive revenue and retention modeling
- Geographic demographic enrichment
- Monte Carlo forecasting simulations
- Tableau executive dashboards
- Executive presentation deck summarizing strategic recommendations

---
# Strategic Recommendations (Preliminary)

Based on the current analysis, several preliminary business recommendations emerged:

## Optimize Promotional Targeting
Discounts and promo codes demonstrated limited impact on increasing average purchase value across customer segments. Future promotional strategies may benefit from more targeted segmentation rather than broad discount application.

## Prioritize High-Value Customer Segments
Customers aged 55+ generated the strongest overall revenue contribution across categories, suggesting opportunities for targeted retention, merchandising, and customer engagement strategies focused on older demographics.

## Expand High-Performing Product Categories
Footwear demonstrated strong average purchase value and customer satisfaction despite lower transaction volume, indicating potential growth opportunities through expanded assortment or targeted marketing initiatives.

## Strengthen Regional Market Intelligence
Regional segmentation revealed opportunities for more localized market analysis and future geographic enrichment modeling to better understand regional purchasing behavior and demographic concentration trends.

## Continue Loyalty Optimization Analysis
Medium-loyalty customers generated the highest aggregate revenue contribution, suggesting potential opportunities to further analyze loyalty progression and customer lifecycle behavior.

---

# Repository Structure

```text
/sql
    01_data_audit.sql
    02_data_cleaning.sql
    03_business_analysis.sql

/tableau
/python
/presentation
/images
