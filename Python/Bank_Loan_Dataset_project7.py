import pandas as pd
import matplotlib.pyplot as plt

#Load CSV data using Pandas.

df=pd.read_csv("Bank_Loan_Default_Dataset.csv")

print(df)

#Clean missing values.

print("\nMissing Value In Column:\n")
print(df.isnull().sum())

df["Age"]=df["Age"].fillna(df["Age"].median())
df["Income"]=df["Income"].fillna(df["Income"].median())
df["Marital_Status"]=df["Marital_Status"].fillna(df["Marital_Status"].mode()[0])

print("\nAfter Cleaning:\n")
print(df.isnull().sum())


#Analyze trends in default by age, income, marital status.

print("\nDefault Counts by Age Group:\n")

df["Age_Group"] = pd.cut(
    df["Age"],
    bins = [20, 30, 40, 50, 60],
    labels = ["21-30", "31-40", "41-50", "51-60"]
    )

print(df.groupby("Age_Group")["Default"].value_counts())


print("\nDefault Counts by Income Group:\n")

df["Income_Group"] = pd.cut(
    df["Income"],
    bins = [20000, 50000, 100000, 150000, 200000],
    labels = ["Low", "Medium", "High", "Very High"]
    )

print(df.groupby("Income_Group")["Default"].value_counts())

print("\nDefault Counts by Marital Status:\n")
print(df.groupby("Marital_Status")["Default"].value_counts())

print("\nDefault Counts by Employement Status:\n")
print(df.groupby("Employment")["Default"].value_counts())

print("\nDefault Counts by Defaulter Status:\n")
print(df["Default"].value_counts())


# --------------------
#  |Create Histogram| 
# --------------------

plt.subplot(1,2,1)
plt.hist(df["Age"], bins=10, edgecolor="black")
plt.title("Age Distribution")
plt.xlabel("Age")
plt.ylabel("Number Of Customer")

plt.subplot(1,2,2)
plt.hist(df["Income"], bins=10, edgecolor="black")
plt.title("Income Distribution")
plt.xlabel("Income")
plt.ylabel("Number Of Customer")

plt.tight_layout()
plt.show()


# --------------------
#  |Create Pie Chart| 
# --------------------

plt.subplot(1,2,1)

marital_count = df["Marital_Status"].value_counts()

plt.pie(
    marital_count,
    labels= marital_count.index,
    autopct="%1.1f%%",
    startangle=90
    )

plt.title("Marital Status Distibution")
plt.axis("equal")
plt.show()


plt.hist(df["Loan_Amount"], bins=20, edgecolor="black")

plt.title("Loan Amount Distribution")
plt.xlabel("Loan Amount")
plt.ylabel("Number of Applicants")

plt.show()








    
