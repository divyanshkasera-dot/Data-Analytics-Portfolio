# 👨‍💼 Employee Database Management & HR Analysis | MySQL

## 📌 Project Overview

The **Employee Database Management & HR Analysis** project focuses on managing and analyzing employee information using MySQL.

The project uses a relational database structure consisting of three tables: Employees, Departments, and Salaries.

SQL queries are used to retrieve employee information, analyze salary distributions across departments, combine employee and salary records, and generate structured HR reports using SQL Views.

The objective is to demonstrate practical SQL database management and reporting skills through an employee database.

## 🎯 Business Objectives

- Create and manage a structured employee database.
- Organize employee information by department.
- Maintain employee salary and bonus records.
- Retrieve employees based on department, age, and location.
- Analyze salary information across departments.
- Combine employee and salary information using JOIN operations.
- Generate reusable HR reports using SQL Views.
- Calculate total employee compensation.

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| MySQL | Database management |
| SQL | Data retrieval and analysis |
| MySQL JOINs | Combining relational tables |
| SQL Views | Creating reusable HR reports |
| GROUP BY | Department-wise salary analysis |
| Aggregate Functions | Salary calculations |

## 📂 Database Structure

The project contains three relational tables.

### 1. Departments

Stores department information.

| Column | Description |
|---|---|
| department_id | Unique department identifier |
| department_name | Department name |
| location | Department location |

### 2. Employees

Stores employee demographic and department information.

| Column | Description |
|---|---|
| employee_id | Unique employee identifier |
| first_name | Employee first name |
| last_name | Employee last name |
| age | Employee age |
| gender | Employee gender |
| department_id | Department reference |

### 3. Salaries

Stores employee salary and bonus information.

| Column | Description |
|---|---|
| employee_id | Employee reference |
| salary | Employee salary |
| bonus | Employee bonus |

## 🔄 Project Workflow

### 1. Database Creation

- Created a MySQL database named `PROJECT4`.
- Designed three relational tables.
- Defined primary keys and foreign key relationships.
- Implemented AUTO_INCREMENT for employee and department identifiers.
- Used foreign key constraints to maintain referential integrity.
- Configured ON DELETE SET NULL and ON DELETE CASCADE relationships.

### 2. Data Insertion

Inserted sample records into:

- Departments
- Employees
- Salaries

The database contains 8 departments and 100 employee records with corresponding salary and bonus information.

### 3. Employee Filtering & Retrieval

Used SQL SELECT queries and JOIN operations to retrieve employees based on specific conditions.

Example analysis:
- Employees working in the Finance department.
- Employees located in New York.
- Employees older than 30 years.

### 4. Department-Wise Salary Analysis

Used GROUP BY and aggregate functions to analyze salary information across departments.

- Calculated the highest salary in each department.
- Sorted departments based on their highest salary.
- Identified departments with higher salary values.

### 5. Employee & Salary Analysis Using JOIN

Combined Employees and Salaries tables using INNER JOIN.

Retrieved:
- Employee ID
- First name
- Last name
- Salary
- Bonus

This creates a combined view of employee compensation information.

### 6. HR Reporting Using SQL Views

Created a SQL View named `HR_REPORT` by combining:

- Employees
- Departments
- Salaries

The HR report includes:

- Employee details
- Age and gender
- Department name
- Department location
- Salary
- Bonus
- Total compensation

**Total Compensation Calculation:**

```sql
(s.salary + s.bonus) AS Total_Compensation
```

The view makes employee and compensation information accessible through a reusable SQL query.

## 📊 Key SQL Concepts Demonstrated

| SQL Concept | Application |
|---|---|
| CREATE DATABASE | Database creation |
| CREATE TABLE | Relational table design |
| PRIMARY KEY | Unique record identification |
| FOREIGN KEY | Table relationships |
| INSERT INTO | Data insertion |
| SELECT | Data retrieval |
| WHERE | Conditional filtering |
| INNER JOIN | Combining related tables |
| GROUP BY | Department-wise grouping |
| MAX() | Finding highest salaries |
| ORDER BY | Sorting results |
| CREATE VIEW | Creating reusable HR reports |
| AUTO_INCREMENT | Automatic ID generation |

## 💡 Business Applications

This database structure demonstrates how organizations can organize employee and compensation information.

Potential applications include:

- Employee information management.
- Department-wise employee reporting.
- Salary and bonus analysis.
- HR reporting and documentation.
- Employee compensation tracking.
- Department-level salary comparisons.

## 🚀 Skills Demonstrated

- MySQL Database Management
- Relational Database Design
- SQL Query Writing
- Primary & Foreign Keys
- SQL JOIN Operations
- Aggregate Functions
- GROUP BY & ORDER BY
- Conditional Filtering
- Database Relationships
- SQL Views
- HR Data Reporting

## ▶️ How to Run the Project

**Step 1:** Download or clone the repository.

**Step 2:** Install MySQL Server and MySQL Workbench.

**Step 3:** Open the SQL file in MySQL Workbench.

**Step 4:** Execute the SQL script to create the database, tables, and insert records.

**Step 5:** Run the analysis queries.

**Step 6:** Execute the following query to access the HR report:

```sql
SELECT * FROM HR_REPORT;
```

## 👨‍💻 Author

**Divyansh Kasera**

Aspiring Data Analyst

GitHub: [divyanshkasera-dot](https://github.com/divyanshkasera-dot)

---

*This project is part of my Data Analytics Portfolio, demonstrating practical applications of MySQL in employee database management and HR reporting.*
