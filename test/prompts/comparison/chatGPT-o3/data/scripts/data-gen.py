import itertools

# Define valid ranges and values based on requirements
fico_range = range(300, 851)           # Using representative values for FICO
co_fico_options = [None, 300, 400, 500, 600, 700, 850]
property_types = ["Single Family", "Condominium", "Townhouse", "Multi Family Unit", "Commercial"]
ltv_values = [0, 50, 75, 80, 95, 100]            # Use percentage points as examples
loan_amounts = [50000, 100000, 418000, 500000, 1000000]  # Representative values
loan_types = ["Fixed", "Adjustable"]
loan_periods = [10, 15, 30, 40]

# Use pairwise combinations for select parameters
parameters = {
    "borrower_fico": [299, 300, 600, 850, 851],    # Boundary and mid-range values
    "co_borrower_fico": [None, 299, 300, 850, 851],
    "property_type": ["Single Family", "Condo", "Townhouse", "Multi Family Unit"],
    "ltv": [80],                         # Focus on the critical LTV boundary for Conventional/Jumbo
    "loan_amount": [50000, 418000, 500000, 1000000],
    "loan_type": ["Fixed", "Adjustable"],
    "loan_period": [10, 15, 30, 40]
}

# Generate pairwise combinations (simplified version)
keys = list(parameters.keys())
combinations = list(itertools.product(*[parameters[k] for k in keys]))

# Reduce dataset (for example, sample every nth combination if needed)
reduced_test_data = combinations[::max(1, len(combinations)//200)]

print("Generated Test Data Set:")
for test_case in reduced_test_data:
    test_input = dict(zip(keys, test_case))
    print(test_input)
