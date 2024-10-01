Feature: Loan Application Submission and Approval

    Scenario: Successful loan approval for Conventional Loan
        Given I am on the loan application page
        When I submit a loan application with the following details:
            | Borrower First Name    | John        |
            | Borrower Last Name     | Doe         |
            | Borrower FICO          | 700         |
            | Co-Borrower First Name | Jane        |
            | Co-Borrower Last Name  | Doe         |
            | Co-Borrower FICO       | 680         |
            | Property Type          | Condominium |
            | Zip Code               | 95123       |
            | Loan Amount            | 200000      |
            | LTV                    | 75          |
            | Loan Type              | Fixed       |
            | Loan Period            | 30          |
        Then the loan application should be approved
        And the loan program should be "Conventional"
        And the interest rate should be "7%"
