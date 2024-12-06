Feature: Loan Application Submission and Approval

    Scenario Outline: Loan application rejection due to low Borrower FICO score
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

        # title-format: Low FICO Loan Rejection - Test <testId>
        Examples:
            | testId | BorrowerFirstName | BorrowerLastName | BorrowerFICO | CoBorrowerFirstName | CoBorrowerLastName | CoBorrowerFICO | PropertyType  | ZipCode | LoanAmount | Ltv | LoanType   | LoanPeriod | LoanProgram | InterestRate |
            | 01     | John              | Doe              | 590          | Jane                | Doe                | None           | Single Family | 95123   | 150000     | 85  | Adjustable | 30         | NA          | NA           |
