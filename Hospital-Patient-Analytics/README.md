# 🏥 Hospital Patient Analytics | SQL & Python

## 📌 Project Overview

The **Hospital Patient Analytics** project focuses on analyzing hospital patient records to understand patient demographics, medical conditions, department performance, doctor workloads, recovery outcomes, and hospital stay patterns.

The project uses **MySQL** for database creation and data integration, and **Python** for data extraction, cleaning, exploratory data analysis (EDA), and visualization.

The objective is to transform raw hospital data into meaningful insights that can help understand hospital operations and support data-driven decision-making.

## 🎯 Business Objectives

- Analyze patient demographics, including age, gender, blood group, and city.
- Identify the most common medical diagnoses.
- Understand patient distribution across hospital departments.
- Analyze doctor-wise patient distribution and average hospital stays.
- Evaluate recovery status across different diagnoses.
- Identify monthly patient admission trends.
- Understand hospital stay duration and identify unusually long or short stays.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL | Database creation, table joins, and data integration |
| Python | Data analysis and automation |
| Pandas | Data manipulation and analysis |
| NumPy | Handling missing values |
| Matplotlib | Data visualization |
| Jupyter / Python IDE | Writing and executing Python scripts |

## 📂 Project Structure

```text
Hospital-Patient-Analytics/
│
├── Hospital Patient Analytics.sql
├── Hospital Patient Analytics.py
├── patients.csv
└── treatments.csv
```

## 🔄 Project Workflow

### 1. Database Creation & Data Integration (MySQL)

- Created a dedicated MySQL database named `PROJECT11`.
- Worked with two datasets: `patients` and `treatments`.
- Used SQL JOIN operations to combine patient and treatment records.
- Created a consolidated table named `HospitalData` for further analysis.

### 2. Data Extraction (Python & MySQL)

- Connected Python to the MySQL database using `mysql.connector`.
- Retrieved the consolidated hospital dataset.
- Loaded the extracted records into a Pandas DataFrame.

### 3. Data Inspection

Performed initial data inspection using:

- `head()` and `tail()` to examine records.
- `info()` to understand column types and dataset structure.
- `describe()` to generate statistical summaries.
- `dtypes` to inspect data types.

### 4. Data Cleaning

Performed the following data-cleaning operations:

- Converted admission, discharge, and registration dates into datetime format.
- Identified missing values.
- Checked for empty strings.
- Identified duplicate records.
- Inspected column data types.

### 5. Exploratory Data Analysis (EDA)

Performed analysis across multiple business dimensions:

**Patient Demographics**
- Gender distribution.
- Blood group distribution.
- City-wise patient distribution.
- Age group classification.

**Medical Analysis**
- Diagnosis-wise patient count.
- Average hospital stay by diagnosis.
- Average patient age by diagnosis.

**Department Analysis**
- Patient count by department.
- Average hospital stay by department.

**Doctor Analysis**
- Number of patients handled by each doctor.
- Average hospital stay under each doctor.

**Recovery Analysis**
- Overall recovery status distribution.
- Recovery status by diagnosis.

**Admission & Hospital Stay Analysis**
- Monthly admission trends.
- Longest hospital stays.
- Shortest hospital stays.
- Overall hospital stay distribution.

### 6. Data Visualization

Created visualizations using Matplotlib to make the findings easier to understand.

The project includes:

1. Gender Distribution – Pie Chart
2. Diagnosis Count – Bar Chart
3. Department-wise Patient Distribution – Bar Chart
4. Recovery Status Distribution – Bar Chart
5. Hospital Stay Duration – Histogram
6. Average Stay Days by Department – Bar Chart

## 📊 Key Analysis Areas

| Analysis | Business Purpose |
|---|---|
| Patient Demographics | Understand the patient population |
| Diagnosis Analysis | Identify frequently occurring medical conditions |
| Department Analysis | Understand department-wise patient distribution |
| Doctor Analysis | Examine doctor-wise patient workloads |
| Recovery Analysis | Understand recorded patient recovery outcomes |
| Admission Trends | Identify monthly admission patterns |
| Hospital Stay Analysis | Examine patient stay durations |

## 💡 Business Value

This analysis demonstrates how raw hospital records can be transformed into structured information for operational understanding.

The insights can help hospital management:

- Understand patient distribution and demand.
- Identify departments handling larger patient volumes.
- Examine differences in hospital stay duration.
- Monitor recorded recovery outcomes.
- Understand admission patterns over time.
- Support better operational planning and resource allocation.

*Note: The project focuses on descriptive analytics and does not establish clinical outcomes or prove doctor performance or treatment effectiveness.*

## 🚀 Skills Demonstrated

- SQL Database Management
- SQL JOIN Operations
- Python-MySQL Connectivity
- Data Extraction
- Data Cleaning & Preprocessing
- Exploratory Data Analysis (EDA)
- Pandas & NumPy
- Data Aggregation and Grouping
- Statistical Analysis
- Data Visualization using Matplotlib

## ▶️ How to Run the Project

**Step 1:** Clone or download this repository.

**Step 2:** Import `patients.csv` and `treatments.csv` into MySQL as separate tables.

**Step 3:** Execute `Hospital Patient Analytics.sql` to create the database and consolidated table.

**Step 4:** Install the required Python libraries:

```bash
pip install mysql-connector-python pandas numpy matplotlib
```

**Step 5:** Update your MySQL connection credentials in the Python script.

**Step 6:** Run `Hospital Patient Analytics.py` to perform data inspection, cleaning, analysis, and visualization.

## 👨‍💻 Author

**Divyansh Kasera**

Aspiring Data Analyst

- GitHub: [divyanshkasera-dot](https://github.com/divyanshkasera-dot)

---

*This project is part of my Data Analytics Portfolio, demonstrating practical applications of SQL and Python in healthcare data analysis.*
