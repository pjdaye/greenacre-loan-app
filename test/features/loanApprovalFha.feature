Feature: Loan Application Submission and Approval

    Scenario: Successful loan approval for FHA Loan
        Given I am on the loan application page
        When I submit a loan application with the following details:
            | Borrower First Name    | John      |
            | Borrower Last Name     | Doe       |
            | Borrower FICO          | 650       |
            | Co-Borrower First Name | Jane      |
            | Co-Borrower Last Name  | Doe       |
            | Co-Borrower FICO       | None      |
            | Property Type          | Townhouse |
            | Zip Code               | 95123     |
            | Loan Amount            | 400000    |
            | LTV                    | 90        |
            | Loan Type              | Fixed     |
            | Loan Period            | 30        |
        Then the loan application should be approved
        And the loan program should be "FHA"
        And the interest rate should be "7.625%"
