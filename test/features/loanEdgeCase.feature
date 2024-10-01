Feature: Loan Application Submission and Approval

    Scenario: Loan application approval at boundary value for Loan Amount
        Given I am on the loan application page
        When I submit a loan application with the following details:
            | Borrower First Name    | John          |
            | Borrower Last Name     | Doe           |
            | Borrower FICO          | 660           |
            | Co-Borrower First Name | Jane          |
            | Co-Borrower Last Name  | Doe           |
            | Co-Borrower FICO       | 620           |
            | Property Type          | Single Family |
            | Zip Code               | 95123         |
            | Loan Amount            | 418000        |
            | LTV                    | 80            |
            | Loan Type              | Adjustable    |
            | Loan Period            | 30            |
        Then the loan application should be approved
        And the loan program should be "Jumbo"
        And the interest rate should be "5.625%"
