# 🏦 Bank Loan Default Analysis | Python & Data Analytics

## 📌 Project Overview

The **Bank Loan Default Analysis** project focuses on analyzing customer financial and demographic data to understand loan default patterns.

Using Python, Pandas, NumPy, and Matplotlib, this project explores how factors such as age, income, marital status, and employment status relate to loan defaults.

The objective is to clean raw customer data, perform exploratory data analysis (EDA), identify patterns in loan defaults, and visualize important customer and financial distributions.

## 🎯 Business Objectives

- Analyze customer demographics and financial information.
- Identify loan default patterns across different age groups.
- Examine default counts across different income groups.
- Understand the relationship between marital status and loan defaults.
- Analyze loan defaults based on employment status.
- Understand the overall distribution of default and non-default customers.
- Examine customer income, age, and loan amount distributions.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis and processing |
| Pandas | Data cleaning and manipulation |
| NumPy | Handling missing values |
| Matplotlib | Data visualization |
| CSV | Dataset storage and input |

## 📂 Project Structure

```text
Bank-Loan-Default-Analysis/
│
├── Bank_Loan_Default_Analysis.py
├── Bank_Loan_Default_Dataset.csv
└── README.md
```

## 🔄 Project Workflow

### 1. Data Loading

- Imported the dataset using Pandas.
- Loaded the CSV file into a DataFrame.
- Examined the dataset to understand its structure and records.

### 2. Data Cleaning & Preprocessing

Identified and handled missing values in the following columns:

- Age – Replaced missing values using the median.
- Income – Replaced missing values using the median.
- Marital Status – Replaced missing values using the mode.

Verified the dataset again to check whether missing values had been handled.

### 3. Exploratory Data Analysis (EDA)

Performed analysis across different customer and financial categories.

**Age Group Analysis**
- Divided customers into different age groups.
- Analyzed default and non-default counts across age groups.

**Income Group Analysis**
- Categorized customers into income segments:
  - Low
  - Medium
  - High
  - Very High
- Examined default counts across income categories.

**Marital Status Analysis**
- Analyzed loan default counts among married, single, and divorced customers.

**Employment Status Analysis**
- Examined loan default patterns across different employment categories.

**Overall Default Analysis**
- Compared the total number of default and non-default customers.

### 4. Data Visualization

Created visualizations using Matplotlib to understand customer distributions and financial patterns.

**Visualizations included:**

1. Age Distribution – Histogram
2. Income Distribution – Histogram
3. Marital Status Distribution – Pie Chart
4. Loan Amount Distribution – Histogram

These visualizations help identify customer distribution patterns and understand the spread of financial variables.

## 📊 Key Analysis Areas

| Analysis | Business Purpose |
|---|---|
| Age Group Analysis | Understand default counts across age segments |
| Income Group Analysis | Examine defaults across income categories |
| Marital Status Analysis | Compare default counts by marital status |
| Employment Analysis | Examine default patterns by employment type |
| Default Distribution | Understand the overall default breakdown |
| Age Distribution | Analyze the age profile of customers |
| Income Distribution | Understand customer income distribution |
| Loan Amount Distribution | Examine the distribution of loan amounts |

## 💡 Business Value

This project demonstrates how customer financial data can be transformed into meaningful information for understanding loan default patterns.

The analysis can help financial institutions:

- Understand customer demographics.
- Examine default patterns across income groups.
- Identify customer segments requiring further investigation.
- Understand employment-wise default distributions.
- Explore loan amount and customer income patterns.
- Support data-driven financial risk analysis.

*Note: This project performs descriptive analysis only. It does not build a machine learning model or predict future loan defaults.*

## 🚀 Skills Demonstrated

- Python Programming
- Data Cleaning & Preprocessing
- Handling Missing Values
- Pandas Data Manipulation
- NumPy
- Exploratory Data Analysis (EDA)
- GroupBy Operations
- Data Categorization using `pd.cut()`
- Statistical Analysis
- Data Visualization
- Matplotlib Histograms and Pie Charts

## ▶️ How to Run the Project

**Step 1:** Clone or download the repository.

**Step 2:** Install the required libraries.

```bash
pip install pandas numpy matplotlib
```

**Step 3:** Make sure the CSV dataset is in the same directory as the Python script.

**Step 4:** Run the Python file.

```bash
python Bank_Loan_Default_Analysis.py
```

**Step 5:** Explore the generated analysis and visualizations.

## 👨‍💻 Author

**Divyansh Kasera**

Aspiring Data Analyst

GitHub: [divyanshkasera-dot](https://github.com/divyanshkasera-dot)

---

*This project is part of my Data Analytics Portfolio, demonstrating practical applications of Python in financial data analysis and exploratory data analysis.*
