# pairwise_test_data_generator.py

from allpairspy import AllPairs
import csv

# Define input variables with their possible values
test_parameters = [
    # Borrower FICO
    [299, 300, 301, 619, 620, 621, 659, 660, 661, 849, 850, 851],
    # Co-Borrower FICO
    ["None", 299, 300, 301, 519, 520, 521, 619, 620, 621, 849, 850, 851],
    # Property Type
    ["Single Family", "Condo", "Townhouse", "Multi-Family", "Commercial"],
    # Loan Amount
    [49999, 50000, 50001, 417999, 418000, 418001, 999999, 1000000, 1000001],
    # LTV
    [0, 1, 2, 79, 80, 81, 99, 100, 101],
    # Loan Type
    ['Fixed', 'Adjustable'],
    # Loan Period
    ["10", "15", "30", "40"],
]

# Generate pairwise combinations
pairwise_combinations = []
for pairs in AllPairs(test_parameters):
    pairwise_combinations.append(pairs)

# Write to CSV
with open('pairwise_test_data.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['Borrower_FICO', 'Co_Borrower_FICO', 'Property_Type', 'Loan_Amount', 'LTV', 'Loan_Type', 'Loan_Period'])
    for row in pairwise_combinations:
        writer.writerow(row)

print(f"Generated {len(pairwise_combinations)} pairwise test cases.")
