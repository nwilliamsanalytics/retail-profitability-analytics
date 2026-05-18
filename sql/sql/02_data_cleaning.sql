-- =========================================
-- DATA CLEANING & TRANSFORMATION WORKFLOW
-- Standardizing fields and enriching analytical dimensions
-- =========================================


-- =========================================
-- CLEAN TABLE CREATION
-- Renaming inconsistent raw fields
-- =========================================

CREATE OR REPLACE TABLE
`effortless-pod-435221-k1.shopping_trends.shopping_trends_clean`
AS

SELECT
    `customer ID` AS customer_ID,
    age,
    gender,
    item_purchased,
    category,
    purchase_amount_USD,
    location,
    size,
    color,
    season,
    review_rating,
    subscription_status,
    payment_method,
    shipping_type,
    discount_applied,
    promo_code_used,
    previous_purchases,
    preferred_payment_method,
    frequency_of_purchases

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_raw`;


-- =========================================
-- ANALYTICAL ENRICHMENT
-- Creating customer segments and business dimensions
-- =========================================

CREATE OR REPLACE TABLE
`effortless-pod-435221-k1.shopping_trends.shopping_trends_analytics`
AS

SELECT

    *,

    -- AGE GROUPS
    CASE
        WHEN age < 25 THEN '18-24'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_group,

    -- SPENDING TIERS
    CASE
        WHEN purchase_amount_USD < 50 THEN 'Low Spend'
        WHEN purchase_amount_USD BETWEEN 50 AND 100 THEN 'Medium Spend'
        ELSE 'High Spend'
    END AS spending_tier,

    -- CUSTOMER LOYALTY SEGMENTS
    CASE
        WHEN previous_purchases >= 40 THEN 'High Loyalty'
        WHEN previous_purchases BETWEEN 20 AND 39 THEN 'Medium Loyalty'
        ELSE 'Low Loyalty'
    END AS loyalty_segment

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_clean`;


-- =========================================
-- GEOGRAPHIC ENRICHMENT
-- Creating regional market segmentation
-- =========================================

CREATE OR REPLACE TABLE
`effortless-pod-435221-k1.shopping_trends.shopping_trends_analytics`
AS

SELECT

    * EXCEPT(region),

    CASE

        -- WEST
        WHEN location IN (
            'California', 'Nevada', 'Alaska', 'Idaho',
            'Washington', 'Oregon', 'Hawaii', 'Utah',
            'Arizona', 'Colorado', 'Montana', 'Wyoming'
        )
        THEN 'West'

        -- MIDWEST
        WHEN location IN (
            'Illinois', 'Nebraska', 'North Dakota',
            'Minnesota', 'South Dakota', 'Iowa',
            'Kansas', 'Missouri', 'Wisconsin',
            'Michigan', 'Indiana', 'Ohio'
        )
        THEN 'Midwest'

        -- NORTHEAST
        WHEN location IN (
            'New York', 'Pennsylvania', 'New Jersey',
            'Massachusetts', 'Connecticut', 'Rhode Island',
            'Vermont', 'New Hampshire', 'Maine',
            'Delaware', 'Maryland'
        )
        THEN 'Northeast'

        -- SOUTHEAST
        WHEN location IN (
            'Alabama', 'Mississippi', 'West Virginia',
            'Florida', 'Georgia', 'South Carolina',
            'North Carolina', 'Tennessee', 'Kentucky',
            'Virginia', 'Louisiana', 'Arkansas'
        )
        THEN 'Southeast'

        -- SOUTHWEST
        WHEN location IN (
            'New Mexico', 'Texas', 'Oklahoma'
        )
        THEN 'Southwest'

        ELSE 'Other'

    END AS region

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_analytics`;
