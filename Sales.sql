SELECT
    a.sku,
    a.channel,
    a.region,
    b.week,
    b.is_holiday_peak,
    b.month,
    b.year,
    b.is_holiday_week,
    b.is_summer,
    b.is_winter,
    b.sku_age,
    b.lifecycle_stage,
    DATEPART(WEEK, CONVERT(date, a.date, 120)) AS week_number,

    -- Aggregations (convert VARCHAR ke FLOAT)
    SUM(CAST(a.units_sold AS FLOAT)) + SUM(CAST(b.units_sold AS FLOAT)) AS units_sold,
    SUM(CAST(a.stock_available AS FLOAT)) + SUM(CAST(b.stock_available AS FLOAT)) AS stock_available,
    AVG(CAST(a.price_unit AS FLOAT)) AS avg_price_unit,
    AVG(CAST(a.delivery_days AS FLOAT)) AS avg_delivery_days,

    -- Lag & Rolling Features
    MAX(CAST(b.lag_1 AS FLOAT)) AS lag_1,
    MAX(CAST(b.lag_2 AS FLOAT)) AS lag_2,
    MAX(CAST(b.rolling_mean_4 AS FLOAT)) AS rolling_mean_4,
    MAX(CAST(b.rolling_std_4 AS FLOAT)) AS rolling_std_4,
    MAX(CAST(b.momentum AS FLOAT)) AS momentum,
    MAX(CAST(b.target_next_week AS FLOAT)) AS target_next_week,

    -- Promotion Flag
    MAX(CAST(a.promotion_flag AS INT)) AS promotion_flag


FROM dbo.df_2022 a
JOIN dbo.df_weekly b
    ON a.sku = b.sku
    AND a.channel = b.channel
    AND a.region = b.region
    AND a.promotion_flag = b.promotion_flag
WHERE ISDATE(a.date) = 1
GROUP BY
    a.sku,
    a.channel,
    a.region,
    b.week,
    b.is_holiday_peak,
    b.month,
    b.year,
    b.is_holiday_week,
    b.is_summer,
    b.is_winter,
    b.sku_age,
    b.lifecycle_stage,
    DATEPART(WEEK, CONVERT(date, a.date, 120));