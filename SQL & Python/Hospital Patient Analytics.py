# Connection To MySQL Database

from mysql.connector import connect 
with (connect(host="localhost",
              user="root",
              password="696969",
              database="project11")
     as conn ):
    print("Connection Created Successfully")
    cur = conn.cursor()
    query = """ select * from HospitalData """
    cur.execute(query)
    results = cur.fetchall()
    #for f in results:
       # print(f)

# Data Inspection 
import pandas as pd

df = pd.DataFrame(results, columns = cur.column_names)

print(df.head())
print(df.tail())
print(df.info())
print(df.describe())

# Data Cleaning
import numpy as np

df["discharge_date"] = pd.to_datetime(df["discharge_date"].replace("", np.nan))
df["admission_date"] = pd.to_datetime(df["admission_date"].replace("", np.nan))
df["registration_date"] = pd.to_datetime(df["registration_date"].replace("", np.nan))

print(df.isnull().sum())
print((df == "").sum())

duplicates = df[df.duplicated(keep=False)]
print(duplicates)
print(df.duplicated().sum())
print(df.dtypes)

# Data Analysis
print(df["stay_days"].describe())
print(df.groupby("diagnosis")["stay_days"].mean())
print(df["stay_days"].describe())

# Gender Distribution
print("Gender Distribution:")
print(df["gender"].value_counts())

# Blood Group Distribution
print("\nBlood Group Distribution:")
print(df["blood_group"].value_counts())

# City-Wise Patient
print("\nCity-Wise Patient Distribution:")
print(df["city"].value_counts())

# Diagnosis Analysis
print("\nDiagnosis Analysis:")
print(df["diagnosis"].value_counts())

print("\nAverage Stay Days By Diagnosis:")
print(df.groupby("diagnosis")["stay_days"].mean())

# Average Age by Diagnosis
print("\nAverage Age by Diagnosis:")
print(df.groupby("diagnosis")["age"].mean())

# Department Analysis
print("\nPatient Per Department:")
print(df["department"].value_counts())

print("\nAverage Stay Days By Department:")
print(df.groupby("department")["stay_days"].mean())

# Doctor Performance Analysis
print("\nPatients Handled By Doctor:")
print(df["doctor_name"].value_counts())

print("\nAverage Stay Under Each Doctor:")
print(df.groupby("doctor_name")["stay_days"].mean())

# Recovery Analysis
print("\nRecovery Status Distribution:")
print(df["recovery_status"].value_counts())

print("\nRecovery Status Distribution By diagnosis:")
print(df.groupby("diagnosis")["recovery_status"].value_counts())

# Monnthly Admission Analysis
print("\nMonthly Admission:")
df["Admission_Month"] = df["admission_date"].dt.month_name()
print(df["Admission_Month"].value_counts())

# Age Group Analysis
print("\nAge Group Analysis:")
bins = [0, 18, 35, 50, 100]
labels = ["Child", "Young Adult", "Adult", "Senior"]

df["Age_group"] = pd.cut(df["age"], bins=bins, labels=labels)
print(df["Age_group"].value_counts())

# Longest Hospital Day
print("\nLongest Hospital Day:")
print(df.nlargest(10, "stay_days"))

# Shortest Hospital Stay
print("\nShortest Hospital stay:")
print(df.nsmallest(10, "stay_days"))

# |Visualizations|
import matplotlib.pyplot as plt

plt.figure(figsize=(15,6))

df["gender"].value_counts().plot( kind="pie", autopct="%1.1f%%")

plt.title("Gender Distribution")
plt.ylabel("")

plt.tight_layout()
plt.show()

# Daignosis Count

plt.figure(figsize=(15,6))

df["diagnosis"].value_counts().head(10).plot(kind="bar")

plt.title("Diagnosis Count")
plt.xlabel("Diagnosis")
plt.ylabel("patients")

plt.xticks(rotation=45)

plt.tight_layout()
plt.show()

# Department Wise Patients

plt.figure(figsize=(15,6))

df["department"].value_counts().sort_values(ascending=False).plot(kind="bar")

plt.title("Department Wise Patients")
plt.xlabel("Departments")
plt.ylabel("patients")

plt.xticks(rotation=30)

plt.tight_layout()
plt.show()

# Recovery Status Distribution

plt.figure(figsize=(15,6))

df["recovery_status"].value_counts().sort_values(ascending=False).plot(kind="bar")

plt.title("Recovery Status Distribution")
plt.xlabel("Status")
plt.ylabel("Patients")

plt.tight_layout()
plt.show()

# Stay Days 

plt.figure(figsize=(15,6))

df["stay_days"].plot(kind="hist", bins=20)

plt.title("Stay Days Distribution")
plt.xlabel("Stay Days")
plt.ylabel("Patients")

plt.tight_layout()
plt.grid(axis="y")
plt.show()

# Average Stay Days By Departments

plt.figure(figsize=(15,6))

df.groupby("department")["stay_days"].mean().sort_values(ascending=False).plot(kind="bar")

plt.title("Average Stay Days By Departments")
plt.xlabel("Departments")
plt.ylabel("Average Stay Days")
plt.xticks(rotation=45)

plt.tight_layout()
plt.show()