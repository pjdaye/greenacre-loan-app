# Oracle for Expected Results

import pandas as pd

def validate_loan_application_response(response, expected_program, expected_rate):
  # Pre-compute expected results based on input parameters
  df = pd.DataFrame({
    'FICO Score': [500, 600],
    'Property Type': ['SFR', 'Condo'],
    'LTV': [60, 70],
    'Loan Amount': [200000, 300000]
  })

  # Map expected program and rate values to the corresponding response values
  program_map = {
    (500, 'SFR'): 'A',
    (600, 'Condo'): 'B'
  }
  rate_map = {
    ('A', 60): 4.25,
    ('B', 70): 3.75
  }

  # Extract LTV from response
  ltv = response.get('ltv')

  # Validate response against expected results
  if not pd.isna(response['program']):
    assert response['program'] in program_map, f"Expected program '{expected_program}' but got '{response['program']}'"
  if not pd.isna(response['rate']):
    assert round(response['rate'], 2) == rate_map[(expected_program, ltv)], f"Expected rate {expected_rate} but got {response['rate']}"

  # Return True for valid responses and False otherwise
  return response['program'] in program_map and response['rate'] == rate_map[(expected_program, ltv)]

if __name__ == '__main__':
    response = {
        'program': 'A',
        'rate': 4.25
    }
    expected_program = 'A'
    expected_rate = 4.25
    is_valid = validate_loan_application_response(response, expected_program, expected_rate)
    print(f"Is Valid: {is_valid}")
