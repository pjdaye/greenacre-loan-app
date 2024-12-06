Feature: Loan Application Submission and Approval

    Scenario Outline: Loan application rejection due to high Loan-to-Value (LTV) ratio
        Given I am on the loan application page
        When I submit a loan application with the following details:
            | borrowerFirstName   | <BorrowerFirstName>   |
            | borrowerLastName    | <BorrowerLastName>    |
            | borrowerFICO        | <BorrowerFICO>        |
            | coBorrowerFirstName | <CoBorrowerFirstName> |
            | coBorrowerLastName  | <CoBorrowerLastName>  |
            | coBorrowerFICO      | <CoBorrowerFICO>      |
            | propertyType        | <PropertyType>        |
            | zipCode             | <ZipCode>             |
            | loanAmount          | <LoanAmount>          |
            | ltv                 | <Ltv>                 |
            | loanType            | <LoanType>            |
            | loanPeriod          | <LoanPeriod>          |
        Then the loan application should be denied
        And the loan program should be "<LoanProgram>"
        And the interest rate should be "<InterestRate>"

        # title-format: High LTV Loan Rejection - Test <testId>
        Examples:
            | testId | BorrowerFirstName | BorrowerLastName | BorrowerFICO | CoBorrowerFirstName | CoBorrowerLastName | CoBorrowerFICO | PropertyType      | ZipCode | LoanAmount | Ltv | LoanType | LoanPeriod | LoanProgram | InterestRate |
            | 01     | John              | Doe              | 720          | Jane                | Doe                | 700            | Multi-Family Unit | 95123   | 900000     | 85  | Fixed    | 30         | NA          | NA           |
