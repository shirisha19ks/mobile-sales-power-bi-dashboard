# 📱 Mobile Sales Performance Analysis Dashboard

## 📊 Project Overview
Welcome to the **Mobile Sales Analysis Dashboard** project! This repository contains an interactive **Power BI Dashboard** designed to analyze and track mobile phone sales data. 

The primary objective of this project is to transform raw, unorganized sales transactions into meaningful visual insights. By leveraging this dashboard, business stakeholders can easily monitor revenue, track profit margins, identify top-performing mobile brands, and understand customer purchasing behavior across different regions.

---

## 🛠️ Tech Stack & Technical Skills Used
This project demonstrates end-to-end Business Intelligence (BI) development skills:
* **Data Extraction & Transformation:** Used **Power Query Editor** for ETL (Extract, Transform, Load) processes, data cleaning, removing duplicates, and handling missing values.
* **Data Modeling:** Established relationships between different tables (Fact and Dimension tables) to create a clean Star Schema.
* **DAX (Data Analysis Expressions):** Created custom measures and calculated columns for advanced metrics like Year-over-Year (YoY) growth, Profit Margin %, and Running Totals.
* **Data Visualization:** Built an intuitive, user-friendly UI/UX dashboard layout following professional design principles.

---

## 📈 Key Features & Dashboard Insights

### 1. High-Level Executive Summary (KPIs)
* **Total Revenue & Profit:** Instant visibility into the company's overall financial health.
* **Total Units Sold:** Tracks the total volume of mobile phones sold during the specified period.
* **Profit Margin (%):** Helps analyze which product lines are the most lucrative.

### 2. Product & Brand Performance
* **Top-Selling Brands:** Visual comparison of sales across major brands like Apple, Samsung, Xiaomi, OnePlus, etc.
* **Model-Level Analysis:** Drill-down features to see which specific mobile models are driving the highest revenue.

### 3. Sales Trend Analysis
* **Time-Series Insights:** Line charts showing monthly, quarterly, and yearly sales trends to pinpoint peak shopping seasons (festivals, sales events).
* **Growth Metrics:** Tracking sales acceleration or deceleration over time.

### 4. Geographical & Regional Insights
* **Regional Performance:** Interactive maps or matrix visuals showing sales distribution across different states, cities, or store locations.
* **Target vs. Achievement:** Identifying underperforming regions that need strategic marketing focus.

### 5. Advanced Interactivity (Slicers & Filters)
* Dynamic filters for **Year, Month, Brand, Region, and Price Range** allowing users to customize their view and do a deep-dive analysis.

---

## 🧮 Sample DAX Measures Used
Here are some examples of the DAX formulas implemented in this project:
* **Total Revenue:** `Total Revenue = SUM(Sales[Revenue])`
* **Total Profit:** `Total Profit = SUM(Sales[Profit])`
* **Profit Margin %:** `Profit Margin % = DIVIDE([Total Profit], [Total Revenue], 0)`

---

## 🚀 How to Explore the Dashboard
To interact with the dashboard on your local machine, follow these steps:
1. **Clone or Download:** Download the `.pbix` file from this repository.
2. **Install Power BI:** Ensure you have the latest version of [Power BI Desktop](https://powerbi.microsoft.com/) installed.
3. **Open the File:** Double-click the downloaded `.pbix` file to open it in Power BI Desktop.
4. **Interact:** Click on different charts, use the slicers on the left/top panel, and explore the interactive tooltips!

---

## 🎯 Conclusion & Business Impact
By using this dashboard, management can make data-driven decisions such as:
* Optimizing inventory levels based on top-selling mobile models.
* Planning targeted promotional offers during historical low-sales months.
* Allocating more marketing budget to high-performing regions.

---
*Created with ❤️ by Shirisha (@shirisha19ks)*
