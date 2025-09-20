# 🛍️ Building-a-Predictive-Sales-Dashboard-for-FMCG

- **Tools :** SQL
- **Visualization :** Power BI
- **Dataset :** FMCG

### Table of Contents
- [STAGE 1 Problem Statement](#stage-1-problem-statement)
  - [Introduction](#introduction)
  - [Business Questions](#business-questions)
  - [Objective](#objective)
- [STAGE 2 Data Preprocessing](#stage-2-data-preprocessing)
  - [Data Assessment](#data-assessment)
- [STAGE 3 Data Analysis](#stage-3-data-analysis)
  - [Weekly Sales Trend Analysis](#weekly-sales-trend-analysis)
  - [Monthly Sales Analysis Based on Promotion](#monthly-sales-analysis-based-on-promotion)
  - [Sales Contribution Analysis by Channel and Region](#sales-contribution-analysis-by-channel-and-region)
  - [Sales Contribution Across Product Lifecycle](#sales-contribution-across-product-lifecycle)


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

## 📁 STAGE 3: Data Analysis

### 1. Weekly Sales Trend Analysis

This analysis aims to observe the weekly sales trend of sku MI-006 across all channels and regions. With the sales values displayed on the chart, the company can more easily identify the weeks with the highest and lowest performance.

<div align="center">
  <img src="https://github.com/user-attachments/assets/6a07aca5-1db0-4257-9ac3-93abf492a6aa" alt="Contoh Gambar" width="400" />
  <p><em>Figure 1 — Weekly Sales Trend Graph</em></p>
</div>

From the chart, it can be seen that in early 2022, sales peaked significantly, reaching over **$4.3 million** in a single week. However, after that, the sales trend became relatively stable with moderate fluctuations ranging between **$1 million and $3 million** per week until 2024. This indicates that there are no strong seasonal patterns, meaning distribution strategies should focus more on supply consistency and logistics efficiency.

### 2. Monthly Sales Analysis Based on Promotion

This analysis aims to evaluate the contribution of promotions to the total sales. By observing the monthly sales distribution influenced by promotional activities, the company can understand the effectiveness of its promotional strategies.

<div align="center">
  <img src="https://github.com/user-attachments/assets/4ae6a47f-b411-4f73-a6cc-2cb6d00f6c89" alt="Contoh Gambar" width="400" />
  <p><em>Figure 2 — Monthly Sales Based on Promotion</em></p>
</div>

From the chart, it can be seen that sales increase significantly during periods when promotions are active. This indicates that promotions have a positive impact on sales, although in some months the increase is not as high as expected. Therefore, the company should evaluate which types of promotions are most effective to consistently boost sales performance.

### 3. Sales Contribution Analysis by Channel and Region

This analysis aims to evaluate the contribution of both distribution channels (E-commerce, Retail, and Discount) and regions (PL-North, PL-South, and PL-Central) to the total sales of SKU MI-006. Each channel has distinct customer characteristics, pricing strategies, and purchasing behaviors, while each region reflects unique market potential and demand patterns. By combining these perspectives, the company can better identify dominant channels and promising regions, enabling more targeted distribution, promotional efforts, and resource allocation to maximize sales performance.

<div align="center">
  <img src="https://github.com/user-attachments/assets/5dd8f62d-2862-4c76-9bb8-e07422f03026"  alt="Contoh Gambar" width="400" />
  <p><em>Figure 4 — Sales by Channel Chart</em></p>
</div>

The visualization shows that **E-commerce recorded the highest sales**, indicating a clear shift in consumer behavior toward online transactions driven by convenience, broader product availability, and more aggressive digital promotions. Meanwhile, **Retail ranked second**, remaining relevant by offering direct customer experiences, particularly for consumers who prefer to evaluate products in-store before making a purchase. Lastly, **Discount contributed the least**, but still plays a strategic role in attracting price-sensitive customers and efficiently clearing excess inventory. Based on these findings, the company should reinforce digital marketing strategies in E-commerce, enhance customer experience in Retail, and tactically leverage the Discount channel to manage inventory without diminishing overall brand value.

<div align="center">
  <img src="https://github.com/user-attachments/assets/740a4d3d-7ea3-45aa-85d6-35e13ecd0a41"  alt="Contoh Gambar" width="400" />
  <p><em>Figure 3 — Sales by Region Chart</em></p>
</div>

The visualization shows that **PL-North recorded the highest sales**, indicating that this region has a larger customer base or stronger demand for the product. Next, **PL-Central ranked second**, reflecting a stable market potential even though it is not as dominant as PL-North. Meanwhile, **PL-South contributed the least**, highlighting potential challenges in market penetration or the need for more targeted strategies in that area. These findings suggest that the company should reinforce distribution and promotional efforts in PL-North to maintain its dominance, enhance customer engagement in PL-Central, and explore more aggressive marketing approaches in PL-South to increase competitiveness.

### 4. Sales Contribution Across Product Lifecycle

This analysis examines the distribution of total sales for SKU MI-006 across different lifecycle stages. Understanding sales performance by lifecycle stage helps the company to manage product portfolios more effectively, ensuring that resources are allocated to the most profitable stages while maintaining balance across the product lifecycle.

<div align="center">
  <img src="https://github.com/user-attachments/assets/86624750-bfaf-4f25-8b89-7ae0778703ea"  alt="Contoh Gambar" width="400" />
  <p><em>Figure 5 — Sales by Region Chart</em></p>
</div>

The analysis shows that the Maturity Stage dominates sales with **$173M (38.42%)**, indicating that the product has achieved market acceptance and stable demand. Meanwhile, the Growth Stage contributes **$109.52M (24.26%)**, reflecting opportunities for further expansion. The Introduction Stage records **$96M (21.17%)**, highlighting strong adoption in the early phase. On the other hand, the Decline Stage contributes the smallest share, with **$17M (3.84%)**, suggesting reduced market relevance. Based on these findings, the company should focus on sustaining market share in the Maturity Stage through loyalty programs, brand reinforcement, and competitive pricing. Additional marketing and distribution resources are needed to support the Growth Stage and maximize its upward potential. At the same time, strong promotional activities must be maintained in the Introduction Stage to ensure new product launches gain traction. For the Decline Stage, products should be managed strategically, either by repositioning, bundling, or phasing them out efficiently.
