Feature: Loan Application Approval

  As a loan officer
  I want to approve or deny loan applications
  So that I can provide financial services to customers

# valid loan application scenarios
# approved loan applications
Scenario: Borrower approved for Jumbo loan
    Given the borrower has a valid FICO score of 750
    When the loan application is submitted with this borrower
    Then the system should return an "Approval", "Jumbo", and "Rate"

Scenario: Borrower and co-borrower approved for Jumbo loan
    Given the borrower has a valid co-borrower with a credit score of 650
    And the applicant is seeking a $420,000 property loan
    When the loan application is submitted with a Single Family Residential property type and an LTV of 75%
    Then the system should return an "Approval", "Jumbo", and "Rate"

Scenario: More Detailed Boundary Values
    Given the applicant is seeking a $420,000 property loan with an exact LTV of 80%
    When the loan application is submitted
    Then the system should return an "Approval", "Jumbo", and "Rate"

Scenario: Jumbo Loan Approval
    Given the applicant has a credit score of 700
    And seeks a $550,000 Mixed Use property loan
    When the application is submitted
    Then the system returns an "Approval", "Jumbo", and "Rate"

Scenario: Multi-Borrower Complex Property
    Given two borrowers, one with a credit score of 750 and the other with 650
    And seeks a $1,200,000 Mixed Use property loan
    When the loan application is submitted with a mixed credit profile
    Then the system returns an "Approval", "Jumbo", and "Rate"

Scenario: Borrower approved for Conventional loan
    Given a loan application with a borrower FICO score of 610
    And an applicant seeking a $1,000,000 conventional property
    When the loan application is submitted with an appropriate property type and an LTV of 85%
    Then the system should return an "Approval", "Conventional", and "Rate"

Scenario: Borrower and co-borrower approved for Conventional loan
    Given two borrowers, one with a credit score of 700 and the other with 600
    And the applicant is seeking a $300,000 property loan
    When the loan application is submitted with a mixed credit profile
    Then the system should return an "Approval", "Conventional", and "Rate" for both

Scenario: Conventional Loan Approval
    Given the applicant has a credit score of 750
    And seeks a $250,000 Single Family property loan
    When the application is submitted
    Then the system returns an "Approval", "Conventional", and "Rate"

Scenario: Multi-Borrower Approval
    Given two borrowers, one with a credit score of 720 and the other with 680
    And the applicant seeks a $350,000 property loan
    When the loan application is submitted with a mixed credit profile
    Then the system returns an "Approval", "Conventional", and "Rate"

Scenario: Minimum Loan Amount Approval
    Given the applicant seeks a $10,000 property loan
    And has a credit score of 650
    When the application is submitted
    Then the system returns an "Approval", "Conventional", and "Rate"

Scenario: Maximum Loan Amount Approval
    Given the applicant seeks a $499,999 property loan
    And has a credit score of 750
    When the application is submitted
    Then the system returns an "Approval", "Conventional", and "Rate"

Scenario: Boundary for Credit Score Approval
    Given the applicant has a credit score of 700
    And seeks a $300,000 property loan
    When the application is submitted
    Then the system returns an "Approval", "Conventional", and "Rate"

# denied loan applications
Scenario: Borrower denied for Low Credit Score
    Given a borrower with a credit score of 300
    And an applicant seeking a $10,000 loan for a property
    When the loan application is submitted with an appropriate property type and an LTV of 80%
    Then the system should return a "Denial", "NA", "NA"

Scenario: Borrower denied for Low Credit Score
    Given the borrower has a valid FICO score of 350
    When the loan application is submitted with this borrower
    Then the system should return a "Denial", "NA", "NA"

# invalid loan applications
Scenario: Invalid Property Type Submission
    Given the applicant attempts to apply for a "Non-existent" property type
    And has a credit score of 720
    When the application is submitted
    Then the system returns an error message

Scenario: Insufficient Funds Notification
    Given the applicant seeks a $700,000 loan with insufficient funds
    When the application is submitted
    Then the system returns a "Funds Unavailable" notification

Scenario: Complex Property Type
    Given a borrower has a valid credit score of 750
    And the applicant seeks a $1,500,000 loan for a Mixed Use property
    When the loan application is submitted
    Then the system should return an "Approval", "Jumbo", and "Rate"
