import pandas as pd
import matplotlib.pyplot as plt 

df=pd.read_csv("Customer Segmentation(1).csv")
##print(df)


##Customer frequency.

frequency = df.groupby("CustomerID").size()

#print(frequency)

## Value

value = df.groupby("CustomerID")["Amount"].sum()
#print(value)


##Recency

df["TransactionDate"] = pd.to_datetime(df["TransactionDate"])

Last_Date = df["TransactionDate"].max()

recency = (Last_Date - df.groupby("CustomerID")["TransactionDate"].max()).dt.days

#print(recency)

rfm=pd.DataFrame({
    "Frequency":frequency,
    "Recency":recency,
    "Value":value
    })

print(rfm)


#Bucket Customers.

rfm["Frequency_Bucket"]=pd.qcut(
    rfm["Frequency"],
    q=4,
    labels=["Low", "Medium", "High", "Very High"]
    )

rfm["Recency_Bucket"]=pd.qcut(
    rfm["Recency"],
    q=3,
    labels=["High", "Medium", "Low"]
    )

rfm["Value_Bucket"]=pd.qcut(
    rfm["Value"],
    q=4,
    labels=["Low", "Medium", "High", "Very High"]
    )

print(rfm)

print("\n")
print(rfm["Frequency_Bucket"].value_counts())
print("\n")
print(rfm["Recency_Bucket"].value_counts())
print("\n")
print(rfm["Value_Bucket"].value_counts())


##Visualize using box plot and scatter plots.

plt.figure(figsize=(10,8))

plt.subplot(2,2,1)

plt.boxplot(rfm["Frequency"])

plt.title("Customer Purchasing Frequency")
plt.ylabel("Frequency")


plt.subplot(2,2,2)

plt.boxplot(rfm["Value"])

plt.title("Customer Spending")
plt.ylabel("Total Amount")


##Visualize using scatter plot.

plt.subplot(2,2,3)

plt.scatter(rfm["Frequency"], rfm["Value"], alpha=0.7)
plt.title("Frequency vs Value")
plt.xlabel("Frequency")
plt.ylabel("Value")


plt.subplot(2,2,4)

plt.scatter(rfm["Recency"], rfm["Value"], alpha=0.7)
plt.title("Recency vs Value")
plt.xlabel("Recency")
plt.ylabel("Value")

plt.tight_layout()
plt.show()


