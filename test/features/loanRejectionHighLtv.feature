Feature: Loan Application Submission and Approval

    Scenario: Loan application rejection due to high Loan-to-Value (LTV) ratio
        Given I am on the loan application page
        When I submit a loan application with the following details:
            | Borrower First Name    | John              |
            | Borrower Last Name     | Doe               |
            | Borrower FICO          | 720               |
            | Co-Borrower First Name | Jane              |
            | Co-Borrower Last Name  | Doe               |
            | Co-Borrower FICO       | 700               |
            | Property Type          | Multi-Family Unit |
            | Zip Code               | 95123             |
            | Loan Amount            | 900000            |
            | LTV                    | 85                |
            | Loan Type              | Fixed             |
            | Loan Period            | 30                |
        Then the loan application should be denied
        And the loan program should be "NA"
        And the interest rate should be "NA"
