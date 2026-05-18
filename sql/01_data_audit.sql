-- =========================================
-- DATA AUDIT STEP 1
-- Reviewing raw dataset structure and field formatting
-- =========================================

SELECT *
FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_raw`
LIMIT 10;

-- =========================================
-- DATA QUALITY AUDIT
-- Checking for missing values across key fields
-- =========================================

SELECT
    COUNT(*) AS total_rows,

    COUNTIF(customer_ID IS NULL) AS missing_customer_id,
    COUNTIF(age IS NULL) AS missing_age,
    COUNTIF(gender IS NULL) AS missing_gender,
    COUNTIF(item_purchased IS NULL) AS missing_item_purchased,
    COUNTIF(category IS NULL) AS missing_category,
    COUNTIF(purchase_amount_USD IS NULL) AS missing_purchase_amount

FROM `effortless-pod-435221-k1.shopping_trends.shopping_trends_clean`;

-- =========================================
-- DATA TYPE VALIDATION
-- Reviewing column names and data types
-- =========================================

SELECT
    column_name,
    data_type

FROM `effortless-pod-435221-k1.shopping_trends.INFORMATION_SCHEMA.COLUMNS`

WHERE table_name = 'shopping_trends_clean'
ORDER BY ordinal_position;
