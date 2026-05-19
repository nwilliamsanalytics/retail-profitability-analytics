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

<div class='tableauPlaceholder' id='viz1779211739728' style='position: relative'><noscript><a href='#'><img alt='Dashboard 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Co&#47;ConsumerSpendingGeographicSalesAnalysis&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='ConsumerSpendingGeographicSalesAnalysis&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Co&#47;ConsumerSpendingGeographicSalesAnalysis&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1779211739728');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='1400px';vizElement.style.height='927px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='1400px';vizElement.style.height='927px';} else { vizElement.style.width='100%';vizElement.style.height='1627px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>

View Live Tableau Dashboard

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
