# Test Data Generation Instructions

import numpy as np

def generate_test_data():
  # Define ranges for each parameter
  fico_score_range = (600, 850)
  property_type_values = ['SFR', 'Condo', 'Apartment']
  ltv_range = (40, 90)
  loan_amount_range = (100000, 5000000)
  loan_type_values = ['Fixed', 'Adjustable']
  loan_period_values = [10, 15, 20, 30]

  # Generate test data using equivalence partitioning and boundary value analysis
  fico_scores = np.random.randint(fico_score_range[0], fico_score_range[1] + 1, size=100)
  property_types = np.random.choice(property_type_values, size=100)
  ltvs = np.round(np.random.uniform(ltv_range[0], ltv_range[1]), decimals=2)
  loan_amounts = np.round(np.random.uniform(loan_amount_range[0], loan_amount_range[1]), decimals=2)
  loan_types = np.random.choice(loan_type_values, size=100)
  loan_periods = np.random.choice(loan_period_values, size=100)

  # Pairwise combinatorial testing for FICO score and Loan Amount
  fico_scores_fine_grained = [f"{score}-{amount}" for score in fico_scores for amount in np.round(np.linspace(loan_amount_range[0], loan_amount_range[1]), decimals=2)]
  loan_amounts_fine_grained = [f"{amount}-{fico_score}" for amount in np.round(np.linspace(loan_amount_range[0], loan_amount_range[1]), decimals=2) for fico_score in fico_scores]

  # Return test data
  return {
    'FICO Scores': fico_scores,
    'Property Types': property_types,
    'LTVs': ltvs,
    'Loan Amounts': loan_amounts,
    'Loan Types': loan_types,
    'Loan Periods': loan_periods,
    'FICO Scores Fine-Grained': fico_scores_fine_grained,
    'Loan Amounts Fine-Grained': loan_amounts_fine_grained
  }

if __name__ == '__main__':
  test_data = generate_test_data()
  print(test_data)
