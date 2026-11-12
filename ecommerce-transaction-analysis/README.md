# E-commerce Transaction Analysis (Excel)

An Excel analysis of 300 e-commerce orders, looking at how consistently customers buy and how spending is spread across customers.

## Dataset
- **Source:** Practice dataset (synthetic, not real company data)
- **Size:** 300 orders, 105 customers, 10 cities, 5 categories
- **Period:** 1 Jan 2025 – 30 Jun 2025
- **Columns:** Order ID, Customer ID, Order Date, Category, Product, Quantity, Unit Price, Total Amount, Payment Method, City, Rating

## Business questions
1. How often does a typical customer order?
2. How consistent are order values?
3. Which customers contribute the most revenue?

## Workbook structure
| Sheet | Purpose |
|---|---|
| `Raw_Data` | Original data, untouched |
| `Data_Cleaning` | Validated copy, converted to an Excel Table, with an added **Order Count** column (orders per customer, using `COUNTIF`) |
| `Analysis` | Mode, standard deviation, and a pivot table of top customers |

## Method
- Checked for missing values, duplicate orders, and whether Quantity × Unit Price matches Total Amount (no issues found)
- Added **Order Count** per customer with `COUNTIF` and structured table references
- Used `MODE` to find the typical orders per customer
- Used `STDEV.P` and `STDEV.S` on Total Amount to measure consistency
- Built a **pivot table** of total spend by customer, sorted to show the top 30

## Key findings
- **Typical customer places 3 orders** in the six-month period.
- **Order values vary a lot:** average order is about ₹84,050 with a standard deviation of about ₹72,088, so orders are very inconsistent in size.
- **Revenue is concentrated:** the top 30 customers (of 105) account for ₹1.29 crore, about **51% of the total ₹2.52 crore** revenue.
- The highest-spending customer is **C213** (₹6.54 lakh).

## Limitations and next steps
- Order Date is stored as text; convert to date format to analyze monthly trends
- Add category, city, and payment-method breakdowns
- Add charts and a short dashboard
- Rebuild the same analysis in SQL and Python (pandas) to compare approaches

## Tools
Microsoft Excel (Tables, COUNTIF, MODE, STDEV, Pivot Tables)
