-- =========================================
-- BUSINESS ANALYSIS WORKFLOW
-- Revenue, customer, category, and regional analysis
-- =========================================


-- =========================================
-- CUSTOMER SEGMENT ANALYSIS
-- Evaluating revenue performance by customer segment
-- =========================================

SELECT

    age_group,
    loyalty_segment,

    COUNT(*) AS total_transactions,

    SUM(purchase_amount_USD) AS total_revenue,

    ROUND(AVG(purchase_amount_USD), 2) AS avg_purchase_value

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_analytics`

GROUP BY
    age_group,
    loyalty_segment

ORDER BY total_revenue DESC;


-- =========================================
-- PROMOTION EFFECTIVENESS ANALYSIS
-- Evaluating impact of discounts and promo codes
-- =========================================

SELECT

    discount_applied,
    promo_code_used,

    COUNT(*) AS total_transactions,

    SUM(purchase_amount_USD) AS total_revenue,

    ROUND(AVG(purchase_amount_USD), 2) AS avg_purchase_value

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_analytics`

GROUP BY
    discount_applied,
    promo_code_used

ORDER BY total_revenue DESC;


-- =========================================
-- CATEGORY PERFORMANCE ANALYSIS
-- Evaluating revenue and purchasing behavior by product category
-- =========================================

SELECT

    category,

    COUNT(*) AS total_transactions,

    SUM(purchase_amount_USD) AS total_revenue,

    ROUND(AVG(purchase_amount_USD), 2) AS avg_purchase_value,

    ROUND(AVG(review_rating), 2) AS avg_review_rating

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_analytics`

GROUP BY category

ORDER BY total_revenue DESC;


-- =========================================
-- CATEGORY PERFORMANCE BY AGE GROUP
-- Evaluating category purchasing behavior across demographics
-- =========================================

SELECT

    age_group,
    category,

    COUNT(*) AS total_transactions,

    SUM(purchase_amount_USD) AS total_revenue,

    ROUND(AVG(purchase_amount_USD), 2) AS avg_purchase_value

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_analytics`

GROUP BY
    age_group,
    category

ORDER BY
    age_group,
    total_revenue DESC;


-- =========================================
-- GEOGRAPHIC REVENUE ANALYSIS
-- Evaluating revenue performance by region
-- =========================================

SELECT

    region,

    COUNT(*) AS total_transactions,

    SUM(purchase_amount_USD) AS total_revenue,

    ROUND(AVG(purchase_amount_USD), 2) AS avg_purchase_value

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_analytics`

GROUP BY region

ORDER BY total_revenue DESC;
