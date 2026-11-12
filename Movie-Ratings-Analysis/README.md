# 🎬 Movie Ratings Analysis | SQL & Excel

## 📌 Project Overview

The **Movie Ratings Analysis** project focuses on analyzing movie-related data using MySQL and Microsoft Excel.

The project uses a movie dataset containing information about movie titles, genres, release years, ratings, budgets, revenues, durations, and directors.

SQL queries are used to analyze average ratings across different genres and identify the top 10 highest-rated movies. Microsoft Excel is used for data cleaning, analysis, and dashboard creation to present meaningful insights.

The objective is to demonstrate practical SQL querying, Excel data analysis, and dashboard development skills through a movie ratings dataset.

## 🎯 Business Objectives

- Analyze movie ratings across different genres.
- Identify genres with the highest average ratings.
- Find the top 10 highest-rated movies.
- Clean and organize raw movie data.
- Explore movie-related information using SQL queries.
- Perform genre-wise rating analysis.
- Present analytical findings through an Excel dashboard.
- Develop practical data analysis and reporting skills.

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| MySQL | Database management |
| SQL | Data retrieval and analysis |
| Microsoft Excel | Data cleaning and analysis |
| Excel Charts | Visual representation of insights |
| Pivot Tables / Data Analysis | Organizing and summarizing movie data |
| CTEs | Structured SQL analysis |

## 📂 Dataset Structure

The movie dataset contains the following columns:

| Column | Description |
|---|---|
| movie_id | Unique movie identifier |
| title | Movie title |
| genre | Movie genre |
| release_year | Movie release year |
| rating | Movie rating |
| budget_musd | Movie production budget in millions USD |
| revenue_musd | Movie revenue in millions USD |
| duration_min | Movie duration in minutes |
| director | Movie director |

## 🔄 Project Workflow

### 1. Database Creation

- Created a MySQL database named `MovieDB`.
- Designed a Movies table to store movie-related information.
- Defined `movie_id` as the PRIMARY KEY.
- Configured appropriate data types for movie attributes.
- Structured the database for SQL-based analysis.

### 2. Data Cleaning & Preparation

Used Microsoft Excel to prepare the movie dataset for analysis.

- Imported the original movie dataset.
- Created a separate cleaned dataset.
- Standardized inconsistent genre names.
- Organized movie-related information.
- Prepared the cleaned dataset for further analysis.

**Dataset Summary:**

- Original dataset: 1,015 movie records.
- Cleaned dataset: 1,005 movie records.
- Total columns: 9.

### 3. Average Rating by Genre

Used SQL aggregate functions to calculate average movie ratings across different genres.

- Applied the `AVG()` function to calculate average ratings.
- Used `WHERE` to exclude records with the genre marked as 'Unknown'.
- Applied `GROUP BY` to categorize movies by genre.
- Used `ORDER BY` to rank genres based on average ratings.

**SQL Query:**

```sql
SELECT 
    genre, 
    AVG(rating) AS Average_Rating
FROM Movies
WHERE genre != 'Unknown'
GROUP BY genre
ORDER BY AVG(rating) DESC;
```

### 4. Top 10 Highest-Rated Movies

Used a Common Table Expression (CTE) to identify the 10 highest-rated movies.

- Created a CTE named `Top10Movies`.
- Selected movie ID, title, genre, and rating.
- Sorted movies based on ratings in descending order.
- Used `LIMIT 10` to retrieve the top 10 records.

**SQL Query:**

```sql
WITH Top10Movies AS (
    SELECT 
        movie_id,
        title,
        genre,
        rating
    FROM Movies
    ORDER BY rating DESC
    LIMIT 10
)
SELECT * FROM Top10Movies;
```

### 5. Excel Analysis & Dashboard

Created an Excel workbook containing five sheets:

- **Raw_Data:** Original movie dataset.
- **Cleaned_Data:** Prepared and standardized dataset.
- **Average_Rating_By_Genre:** Genre-wise average rating analysis.
- **Top10Movies:** Top 10 highest-rated movies.
- **Charts & Dashboard:** Visual presentation of movie analysis.

The dashboard provides a summarized visual representation of the movie ratings analysis.

## 📊 Key Findings

Based on the cleaned dataset and analysis:

- Sci-Fi has the highest average rating of approximately **7.33**.
- Adventure ranks second with an average rating of approximately **7.13**.
- Animation ranks third with an average rating of approximately **7.11**.
- The highest movie rating in the dataset is **9.8**.
- Multiple movies share the highest rating of 9.8.

## 📊 Key SQL Concepts Demonstrated

| SQL Concept | Application |
|---|---|
| CREATE DATABASE | Database creation |
| USE | Selecting a database |
| CREATE TABLE | Table structure creation |
| PRIMARY KEY | Unique movie identification |
| SELECT | Data retrieval |
| WHERE | Conditional filtering |
| AVG() | Calculating average ratings |
| GROUP BY | Genre-wise analysis |
| ORDER BY | Sorting movie ratings |
| LIMIT | Extracting top 10 records |
| CTE | Structured SQL queries |

## 💡 Business Applications

This type of analysis can help movie-related businesses and entertainment platforms understand audience rating patterns.

Potential applications include:

- Genre performance analysis.
- Movie rating comparisons.
- Identifying highly rated movies.
- Understanding rating trends across genres.
- Supporting movie recommendation research.
- Creating analytical reports for entertainment businesses.

## 🚀 Skills Demonstrated

- MySQL Database Management
- SQL Query Writing
- Data Cleaning & Preparation
- Aggregate Functions
- GROUP BY & ORDER BY
- Common Table Expressions (CTE)
- Data Analysis Using Excel
- Excel Dashboard Creation
- Data Visualization
- Analytical Thinking
- Business Reporting

## ▶️ How to Run the Project

**Step 1:** Download or clone the repository.

**Step 2:** Install MySQL Server and MySQL Workbench.

**Step 3:** Open `Movie_Ratings_Analysis_.sql` in MySQL Workbench.

**Step 4:** Execute the SQL script to create the database and Movies table.

**Step 5:** Import the movie dataset into the Movies table.

**Step 6:** Execute the SQL queries to perform genre-wise rating analysis and identify the top 10 highest-rated movies.

**Step 7:** Open `Movie_Ratings_Analysis_.xlsx` in Microsoft Excel to explore the cleaned dataset, analysis sheets, and dashboard.

## 👨‍💻 Author

**Divyansh Kasera**

Aspiring Data Analyst

GitHub: [divyanshkasera-dot](https://github.com/divyanshkasera-dot)

---

*This project is part of my Data Analytics Portfolio, demonstrating practical applications of MySQL and Microsoft Excel in movie data analysis and visualization.*
