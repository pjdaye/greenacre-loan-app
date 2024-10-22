Feature: Loan Application Submission and Approval

    Scenario Outline: Successful loan approval for Conventional Loan
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
        Then the loan application should be approved
        And the loan program should be "Conventional"
        And the interest rate should be "7%"

        Examples:
            | BorrowerFirstName | BorrowerLastName | BorrowerFICO | CoBorrowerFirstName | CoBorrowerLastName | CoBorrowerFICO | PropertyType | ZipCode | LoanAmount | Ltv | LoanType | LoanPeriod |
            | John              | Doe              | 700          | Jane                | Doe                | 680            | Condominium  | 95123   | 200000     | 75  | Fixed    | 30         |
