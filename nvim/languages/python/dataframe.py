import pandas as pd

# Creating a DataFrame
data = {
    "Name": ["Alice", "Bob", "Charlie", "David", "Eve"],
    "Age": [24, 27, 22, 32, 29],
    "City": ["New York", "Los Angeles", "Chicago", "Houston", "Phoenix"],
}

df = pd.DataFrame(data)

# Display the original DataFrame
print("Original DataFrame:")
print(df)

# Add a new column 'Age in 5 Years'
df["Age in 5 Years"] = df["Age"] + 5

# Display the modified DataFrame
print("\nDataFrame after adding 'Age in 5 Years' column:")
print(df)

# Filter the DataFrame to show only people older than 25
filtered_df = df[df["Age"] > 25]

# Display the filtered DataFrame
print("\nFiltered DataFrame (Age > 25):")
print(filtered_df)

# Group by 'City' and calculate the average age
grouped_df = df.groupby("City")["Age"].mean().reset_index()

# Display the grouped DataFrame
print("\nGrouped DataFrame by City with average Age:")
print(grouped_df)
