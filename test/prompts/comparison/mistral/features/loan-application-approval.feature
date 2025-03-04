Feature: Loan Application Submission and Approval

    As a borrower,
    I want to submit my data
    So that I can get a loan approval.

  # Test Case 1: Valid Loan Application for Jumbo Program
  Scenario: Valid Loan Application for Jumbo Program
    Given the borrower has a FICO score of "700"
    And the co-borrower has a FICO score of "650"
    And the property type is "Single Family"
    And the LTV is "75"% on a loan of $"500000"
    And the loan amount is $"500000"
    And the loan type is "Fixed"
    And the loan period is "30 years"
    When the borrower submits the loan application
    Then the application should be approved
    And the loan program should be "Jumbo"
    And the interest rate should be calculated based on the "Jumbo" program

  # Test Case 2: Loan Application with Boundary Values
  Scenario: Loan Application with Boundary Values
    Given the borrower has a FICO score of "300"
    And the co-borrower has a FICO score of "None"
    And the property type is "Condominium"
    And the LTV is "100"% on a loan of $"50000"
    And the loan amount is $"50000"
    And the loan type is "Fixed"
    And the loan period is "15 years"
    When the borrower submits the loan application
    Then the application should be approved
    And the loan program should be "FHA"
    And the interest rate should be calculated based on the "FHA" program

  # Test Case 3: Invalid Loan Application
  Scenario: Invalid Loan Application
    Given the borrower has a FICO score of "299"
    And the co-borrower has a FICO score of "300"
    And the property type is "Commercial"
    And the LTV is "101"% on a loan of $"49999"
    And the loan amount is $"49999"
    And the loan type is "Adjustable"
    And the loan period is "10 years"
    When the borrower submits the loan application
    Then the application should be denied

  # Test Case 4: Multiple Loan Program Eligibility
  Scenario: Multiple Loan Program Eligibility
    Given the borrower has a FICO score of "750"
    And the co-borrower has a FICO score of "700"
    And the property type is "Single Family"
    And the LTV is "70"% on a loan of $"600000"
    And the loan amount is $"600000"
    And the loan type is "Fixed"
    And the loan period is "30 years"
    When the borrower submits the loan application
    Then the application should be approved
    And the loan program should be "Jumbo"
    And the interest rate should be calculated based on the "Jumbo" program

  # Test Case 5: Missing Required Fields
  Scenario: Missing Required Fields
    Given the borrower has a FICO score of "700"
    And the co-borrower has a FICO score of "None"
    And the LTV is "80"% on a loan of $"200000"
    And the loan amount is $"200000"
    And the loan type is "Fixed"
    And the loan period is "30 years"
    When the borrower submits the loan application
    Then the application should be denied
