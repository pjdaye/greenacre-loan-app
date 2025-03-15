# Test Data Generation Instructions

import itertools
import csv

# Equivalence partitioning & boundary value analysis
borrower_fico_scores = [299, 300, 619, 620, 659, 660, 850, 851]
co_borrower_fico_scores = ['None', 299, 300, 519, 520, 619, 620, 659, 660, 850, 851]
ltv_values = [79, 80, 81, 99, 100]
loan_amounts = [49999, 50000, 418000, 418001]
property_types = ['SFR', 'Condo', 'Townhouse', 'Multi-Family', 'Commercial']
loan_types = ['Fixed', 'Adjustable']
loan_periods = [10, 15, 30, 40]

# Pairwise combinatorial generation (simplified)
pairwise_test_cases = list(itertools.product(borrower_fico_scores, co_borrower_fico_scores, property_types, ltv_values, loan_amounts, loan_types, loan_periods))

# Use combinational tool (e.g., PICT) for full pairwise testing

if __name__ == '__main__':
    with open('loan-approval-test-cases.csv', mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Borrower FICO', 'Co-borrower FICO', 'Property Type', 'LTV', 'Loan Amount', 'Loan Type', 'Period'])
        for test_case in pairwise_test_cases:
            writer.writerow(test_case)
