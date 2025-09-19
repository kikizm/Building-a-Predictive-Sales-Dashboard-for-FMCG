# 🛍️ Building-a-Predictive-Sales-Dashboard-for-FMCG

- **Tools :** SQL
- **Visualization :** Power BI
- **Dataset :** FMCG

-----

## 📁 STAGE 1: Problem Statement

### Introduction
The Fast-Moving Consumer Goods (FMCG) industry operates in a highly competitive and dynamic environment, where understanding sales performance, promotions, and product lifecycle is crucial for decision-making. This project leverages transactional sales data (2022–2024) to uncover insights that help optimize pricing, inventory, and promotional strategies. In addition, companies can also identify which products or services are underperforming in the market. This allows them to adjust the right business strategies so that they can enhance customer experience and achieve long-term business goals.

### Business Questions
- How do promotions impact product sales across different regions and channels?
- Which product lifecycle stages and sales channels contribute the most to overall sales performance?
- How can time-series features (such as lag and rolling) support demand forecasting for FMCG sales?

### Objective
Provide FMCG sales visualizations to understand trends, promotion impact, and region/channel contributions to support business decisions.

## 📁 STAGE 2: Data Preprocessing

### Data Assessment
Before entering the analysis stage, a data assessment is conducted to check for completeness and quality. Several things are checked:

Table 1 – Data Assessment Results

| **Data Assessment** | **Finding**                                                                                          | **Handling**                                                                                                            |
| ------------------- | ---------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| Missing values      | Found NULL values in several columns (e.g., `units_sold`, `stock_available`, `price_unit`)        | Replace missing numeric values with `0` to avoid miscalculation                                                         |
| Duplicates          | Duplicates detected based on the combination of `sku`, `channel`, and `region`               | Removed duplicate rows using `GROUP BY`                                                                             |
| Data type validity  | Numeric columns (`units_sold`, `stock_available`, `price_unit`) need validation for negative values   | Replace negative values with `0` or exclude them from analysis                                                          |
| Outliers            | Extreme values detected (e.g., unusually high `units_sold` compared to typical sales distribution)    | Manual inspection applied; keep as “business-driven” unless identified as erroneous entries                             |
| Consistency         | Category values are already consistent: <br> - `sku`: only one product (`MI-006`) <br> - `channel`: `E-commerce`, `Discount`, `Retail` <br> - `region`: `PL-North`, `PL-South`, `PL-Central` | No transformation needed; categories maintained as-is |
------

