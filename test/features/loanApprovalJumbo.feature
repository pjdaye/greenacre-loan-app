Feature: Loan Application Submission and Approval

    Scenario Outline: Successful loan approval for Jumbo Loan
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
        And the loan program should be "<LoanProgram>"
        And the interest rate should be "<InterestRate>"

        Examples:
            | BorrowerFirstName | BorrowerLastName | BorrowerFICO | CoBorrowerFirstName | CoBorrowerLastName | CoBorrowerFICO | PropertyType  | ZipCode | LoanAmount | Ltv | LoanType   | LoanPeriod | LoanProgram | InterestRate |
            | John              | Doe              | 660          | Jane                | Doe                | 620            | Single Family | 95123   | 418000     | 80  | Adjustable | 30         | Jumbo       | 5.625%       |
            | Jumbo_BFName_01   | Jumbo_BLName_01  | 660          | Jumbo_CFName_01     | Jumbo_CLName_01    | 849            | Condominium   | 95101   | 418000     | 80  | Fixed      | 30         | Jumbo       | 7.125%       |
