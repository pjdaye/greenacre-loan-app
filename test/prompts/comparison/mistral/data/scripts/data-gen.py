import itertools

# Define equivalence partitions and boundary values
fico_scores = [300, 620, 660, 850]
ltv_values = [0, 80, 100]
loan_amounts = [50000, 418000, 1000000]
loan_periods = [10, 15, 30, 40]
property_types = ["SFR", "Condo", "Townhouse", "Multi-Family", "Commercial"]
loan_types = ["Fixed", "Adjustable"]

# Generate pairwise combinations
test_data = list(itertools.product(fico_scores, ltv_values, loan_amounts, loan_periods, property_types, loan_types))

# Filter test data based on valid combinations
valid_test_data = [
    data for data in test_data
    if (data[0] >= 660 and data[2] >= 418000 and data[3] in [15, 30, 40])  # Jumbo
    or (data[0] >= 620 and data[2] >= 50000 and data[3] in [10, 15, 30, 40])  # Conventional
    or (data[0] >= 300 and data[2] <= 418000 and data[3] in [15, 30])  # FHA
]

# Output the reduced test data set
for i, data in enumerate(valid_test_data, start=1):
    print(f"Test Case {i}: {data}")
