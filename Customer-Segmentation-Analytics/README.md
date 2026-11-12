# 🛍️ Customer Segmentation Using RFM Analysis | Python

## 📌 Project Overview

The **Customer Segmentation** project focuses on analyzing customer purchasing behavior using the RFM (Recency, Frequency, Monetary Value) analysis technique.

Using Python, Pandas, and Matplotlib, this project evaluates customer transactions to understand how recently customers purchased, how frequently they made purchases, and how much they spent.

The objective is to categorize customers into different purchasing segments and identify patterns that can help businesses understand customer value and buying behavior.

## 🎯 Business Objectives

- Analyze individual customer purchasing behavior.
- Calculate customer purchase frequency.
- Measure customer spending using total transaction amounts.
- Identify how recently each customer made a purchase.
- Categorize customers into different RFM groups.
- Understand customer spending and purchasing patterns.
- Visualize relationships between customer frequency, recency, and spending.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis |
| Pandas | Data manipulation and analysis |
| Matplotlib | Data visualization |
| CSV | Dataset storage |

## 📂 Dataset Information

The project uses `Customer Segmentation(1).csv`, containing 1,636 transaction records and five columns.

| Column | Description |
|---|---|
| TransactionID | Unique transaction identifier |
| CustomerID | Customer identifier |
| TransactionDate | Date of the transaction |
| Amount | Transaction amount |
| ProductCategory | Product category purchased |

## 🔄 Project Workflow

### 1. Data Loading

- Imported the dataset using Pandas.
- Loaded transaction records into a DataFrame.
- Prepared the data for customer-level analysis.

### 2. RFM Analysis

Calculated three important customer metrics:

**Recency (R)**

Measures how recently a customer made a purchase.

- Identified the latest transaction date in the dataset.
- Calculated the number of days since each customer's most recent transaction.

**Frequency (F)**

Measures how frequently a customer purchases.

- Grouped transactions by CustomerID.
- Counted the number of transactions made by each customer.

**Monetary Value (M)**

Measures how much a customer spends.

- Grouped transaction amounts by CustomerID.
- Calculated the total spending for each customer.

### 3. Customer Segmentation

Categorized customers into different groups using Pandas `qcut()`.

**Frequency Segmentation**
- Low
- Medium
- High
- Very High

**Recency Segmentation**
- High
- Medium
- Low

**Value Segmentation**
- Low
- Medium
- High
- Very High

The segmentation uses quantile-based grouping to divide customers according to their purchasing behavior.

*Note: Higher recency here means a more recent purchase, while lower recency means a longer time since the last purchase.*

### 4. Data Visualization

Created visualizations using Matplotlib to understand customer purchasing patterns.

**Visualizations included:**

1. Customer Purchasing Frequency – Box Plot
2. Customer Spending – Box Plot
3. Frequency vs Value – Scatter Plot
4. Recency vs Value – Scatter Plot

These visualizations help identify spending patterns, purchasing frequency, and relationships between customer metrics.

## 📊 Key Analysis Areas

| Analysis | Business Purpose |
|---|---|
| Recency Analysis | Understand customer purchase activity |
| Frequency Analysis | Identify frequent and occasional customers |
| Monetary Analysis | Understand total customer spending |
| Frequency Segmentation | Categorize customers by purchase frequency |
| Recency Segmentation | Categorize customers by purchase recency |
| Value Segmentation | Categorize customers by spending |
| Scatter Plot Analysis | Explore relationships between RFM metrics |
| Box Plot Analysis | Understand distributions and potential outliers |

## 💡 Business Applications

RFM analysis can help businesses:

- Identify high-value customers.
- Understand frequent and occasional buyers.
- Identify customers who have not purchased recently.
- Develop targeted marketing campaigns.
- Design customer retention strategies.
- Understand customer spending behavior.
- Improve customer relationship management.

## 🚀 Skills Demonstrated

- Python Programming
- Pandas Data Manipulation
- GroupBy Operations
- Datetime Processing
- RFM Analysis
- Customer Segmentation
- Quantile-Based Categorization
- `pd.qcut()`
- Exploratory Data Analysis (EDA)
- Data Visualization
- Matplotlib Box Plots and Scatter Plots

## ▶️ How to Run the Project

**Step 1:** Clone or download the repository.

**Step 2:** Install the required libraries.

```bash
pip install pandas matplotlib
```

**Step 3:** Keep the CSV dataset and Python script in the same directory.

**Step 4:** Run the Python script.

```bash
python "Customer Segmentation.py"
```

**Step 5:** Explore the generated RFM analysis and visualizations.

## 👨‍💻 Author

**Divyansh Kasera**

Aspiring Data Analyst

GitHub: [divyanshkasera-dot](https://github.com/divyanshkasera-dot)

---

*This project is part of my Data Analytics Portfolio, demonstrating practical applications of Python and RFM analysis in customer behavior analytics.*
