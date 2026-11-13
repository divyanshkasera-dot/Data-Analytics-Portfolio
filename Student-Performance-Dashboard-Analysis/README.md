# 🎓 Student Performance Analysis & Dashboard | Power BI & Excel

## 📌 Project Overview

The **Student Performance Analysis & Dashboard** project focuses on analyzing student academic performance, subject-wise marks, and attendance using Microsoft Excel and Power BI.

The project uses an educational dataset containing student details, class information, subjects, examination marks, academic terms, and attendance percentages.

Microsoft Excel is used for data cleaning and preparation, while Power BI is used to create an interactive dashboard that presents key academic performance indicators and visual insights.

The objective is to demonstrate practical data cleaning, data modeling, KPI development, data visualization, and interactive dashboard creation skills through an educational performance dataset.

## 🎯 Business Objectives

- Analyze overall student academic performance.
- Monitor average marks obtained by students.
- Evaluate student attendance percentages.
- Compare academic performance across different classes.
- Analyze subject-wise marks distribution.
- Compare attendance across classes and sections.
- Identify student performance patterns.
- Create an interactive dashboard for academic reporting.
- Provide a structured overview of student performance indicators.

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| Microsoft Excel | Data cleaning and preparation |
| Power BI | Interactive dashboard development |
| Power Query | Data transformation and preparation |
| DAX | KPI calculations and measures |
| Data Modeling | Organizing student-related data |
| Power BI Visuals | Charts, cards, tables, and slicers |

## 📂 Dataset Structure

The Excel workbook contains five sheets.

### 1. RawExamData

Contains the original examination dataset.

| Column | Description |
|---|---|
| StudentID | Unique student identifier |
| StudentName | Student name |
| Class | Student grade |
| Section | Student section |
| Term | Academic examination term |
| Subject | Subject name |
| MarksObtained | Marks obtained by the student |
| MaxMarks | Maximum marks available |
| Attendance% | Student attendance percentage |

### 2. DataCleaning

Contains the prepared examination dataset with an additional validation column.

- Cleaned examination records.
- Data validation using a Sanity Check column.
- Identification of valid records.
- Prepared data for further analysis.

### 3. Students

Contains student information, including:

- Student ID
- Student name
- Gender
- Class
- Section
- Date of birth
- City

### 4. Subjects

Contains subject-related information, including subject IDs, subject names, and maximum marks.

### 5. Teachers

Contains teacher information, including teacher IDs, teacher names, assigned subjects, and classes.

## 🔄 Project Workflow

### 1. Data Collection & Preparation

Imported the educational dataset into Microsoft Excel.

- Organized raw examination records.
- Reviewed student and examination information.
- Prepared separate sheets for students, subjects, and teachers.
- Structured the dataset for Power BI analysis.

**Dataset Summary:**

- Original examination records: 10,800.
- Cleaned examination records: 10,276.
- Unique students: 600.
- Subjects: 6.
- Classes: Grade 6 to Grade 10.
- Academic terms: Term 1, Term 2, and Term 3.

### 2. Data Cleaning & Validation

Used Microsoft Excel to prepare and validate the examination dataset.

- Reviewed examination records.
- Added a Sanity Check column.
- Validated records for data consistency.
- Separated the cleaned dataset from the original raw data.
- Prepared structured data for visualization.

The cleaned dataset contains 10,276 records marked as Valid.

### 3. Power BI Dashboard Development

Imported the prepared Excel data into Power BI and developed an interactive student performance dashboard.

The dashboard includes the following visualizations:

**KPI Cards:**
- Average Marks
- Average Attendance
- Total Students

**Charts & Visualizations:**

- **Attendance by Class and Section:** Area chart comparing attendance percentages across different classes and sections.
- **Marks Obtained by Subject:** Donut chart showing the distribution of marks across subjects.
- **Marks Obtained by Class:** Funnel chart presenting marks distribution across different grade levels.
- **Student Performance Table:** Detailed student information, including student ID, name, class, section, subject, marks obtained, maximum marks, and attendance percentage.

### 4. Interactive Dashboard & Filtering

Added a Class slicer to make the dashboard interactive.

- Filter student performance by class.
- Explore academic performance across different grade levels.
- Analyze attendance and marks through visual comparisons.
- View student-level examination information.

## 📊 Key Dashboard Indicators

| KPI / Metric | Purpose |
|---|---|
| Average Marks | Measures overall academic performance |
| Average Attendance | Monitors student attendance |
| Total Students | Displays the total student count |
| Subject-wise Marks | Compares marks across subjects |
| Class-wise Performance | Compares academic performance across grades |
| Class & Section Attendance | Analyzes attendance distribution |

## 💡 Business Applications

This type of dashboard can help educational institutions monitor academic performance and make data-driven decisions.

Potential applications include:

- Academic performance monitoring.
- Student attendance tracking.
- Subject-wise performance analysis.
- Class-level performance comparisons.
- Academic reporting for school management.
- Identifying areas requiring academic improvement.
- Supporting data-driven educational planning.

## 🚀 Skills Demonstrated

- Microsoft Excel
- Data Cleaning & Validation
- Power BI Dashboard Development
- Power Query
- DAX Measures
- KPI Development
- Data Modeling
- Data Visualization
- Interactive Slicers
- Academic Performance Analysis
- Business Intelligence Reporting

## ▶️ How to Run the Project

**Step 1:** Download or clone the repository.

**Step 2:** Download and install Microsoft Power BI Desktop.

**Step 3:** Open `Student Dashboard (1).pbix` in Power BI Desktop.

**Step 4:** Explore the dashboard and interact with the Class slicer.

**Step 5:** Open `Student_Performance_Dashboard.xlsx` in Microsoft Excel to explore the raw data, cleaned data, and supporting datasets.

## 👨‍💻 Author

**Divyansh Kasera**

Aspiring Data Analyst

GitHub: [divyanshkasera-dot](https://github.com/divyanshkasera-dot)

---

*This project is part of my Data Analytics Portfolio, demonstrating practical applications of Microsoft Excel and Power BI in educational data analysis and interactive dashboard development.*
