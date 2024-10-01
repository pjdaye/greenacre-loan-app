Feature: Loan Application Submission and Approval

    Scenario: Loan application rejection due to low Borrower FICO score
        Given I am on the loan application page
        When I submit a loan application with the following details:
            | Borrower First Name    | John          |
            | Borrower Last Name     | Doe           |
            | Borrower FICO          | 590           |
            | Co-Borrower First Name | Jane          |
            | Co-Borrower Last Name  | Doe           |
            | Co-Borrower FICO       | None          |
            | Property Type          | Single Family |
            | Zip Code               | 95123         |
            | Loan Amount            | 150000        |
            | LTV                    | 85            |
            | Loan Type              | Adjustable    |
            | Loan Period            | 30            |
        Then the loan application should be denied
        And the loan program should be "NA"
        And the interest rate should be "NA"
