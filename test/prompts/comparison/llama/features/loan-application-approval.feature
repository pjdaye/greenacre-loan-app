Feature: Loan Application Feature

    Scenario Outline: Valid Loan Application Submission

        Given I have submitted my loan application with valid input data
        When I submit the application for approval
        Then I should receive a loan approval response with valid program and rate information

        Examples:
            | FICO Score | Property Type | LTV | Loan Amount | Loan Type  | Loan Period |
            | 750        | SFR           | 70% | $500,000    | Fixed      | 15 years    |
            | 700        | Condo         | 60% | $300,000    | Adjustable | 30 years    |

    Scenario Outline: Invalid Loan Program

        Given I have submitted my loan application with invalid input data
        When I submit the application for approval
        Then I should receive a loan denial response with an error message indicating an invalid program

        Examples:
            | FICO Score | Property Type | LTV | Loan Amount | Loan Type  | Loan Period |
            | 600        | Multi-Family  | 90% | $400,000    | Adjustable | 10 years    |

    Scenario Outline: Edge Case - Zero FICO Score

        Given I have submitted my loan application with a zero FICO score
        When I submit the application for approval
        Then I should receive a loan denial response with an error message indicating a low credit score

        Examples:
            | Property Type | LTV | Loan Amount | Loan Type | Loan Period |
            | SFR           | 60% | $200,000    | Fixed     | 20 years    |

    Scenario Outline: Edge Case - Negative FICO Score

        Given I have submitted my loan application with a negative FICO score
        When I submit the application for approval
        Then I should receive a loan denial response with an error message indicating a low credit score

        Examples:
            | Property Type | LTV | Loan Amount | Loan Type  | Loan Period |
            | Condo         | 40% | $300,000    | Adjustable | 15 years    |


    Scenario: Low Credit Score Loan Application

        Given the user has a credit score below 500
        When they submit a loan application
        Then the system should deny the loan application and provide an error message indicating that the credit score is too low.

    Scenario: High Loan Amount Loan Application

        Given the user submits a loan application with a loan amount above $1,000,000
        When they submit the loan application
        Then the system should reject the loan application and provide an error message indicating that the loan amount is too high.

    Scenario: Unconventional Property Type Loan Application

        Given the user submits a loan application for a property type (e.g., 'Apartment' or 'Townhouse')
        When they submit the loan application
        Then the system should correctly identify the property type and allow the loan application to proceed.

    Scenario: Concurrent Loan Applications with Multiple Credit Scores

        Given two users submit concurrent loan applications with different credit scores (e.g., 500 vs. 600)
        When they submit their loan applications
        Then the system should correctly process both loan applications and assign them separate loan numbers.

    Scenario Outline: Valid Credit Score Approval

        Given the user has a valid credit score (600-850)
        When they submit a loan application
        Then the system approves the loan application

    Scenario Outline: Low Credit Score Denial
    
        Given the user has a low credit score (<500)
        When they submit a loan application
        Then the system denies the loan application

    Scenario Outline: High Credit Score No Additional Review
    
        Given the user has a high credit score (>850)
        When they submit a loan application
        Then the system does not trigger any additional review

    Scenario Outline: Invalid Program Type Approval
    
        Given the user submits a loan application for an invalid program type (e.g., Apartment, Townhouse)
        When they submit the loan application
        Then the system approves the loan application

    Scenario Outline: Large Loan Amount Rejection
    
        Given the user submits a loan application with a large loan amount (> $1,000,000)
        When they submit the loan application
        Then the system rejects the loan application

    Scenario Outline: Small Loan Amount No Additional Review
    
        Given the user submits a loan application with a small loan amount (<$100,000)
        When they submit the loan application
        Then the system does not trigger any additional review

    Scenario Outline: FICO Score 500 Denial
    
        Given the user has a FICO score of 500
        When they submit a loan application
        Then the system denies the loan application

    Scenario Outline: High LTV Ratio Rejection
    
        Given the user submits a loan application with an LTV ratio above 80%
        When they submit the loan application
        Then the system rejects the loan application
