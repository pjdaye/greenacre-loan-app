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
        And the loan program should be "<LoanProgram>"
        And the interest rate should be "<InterestRate>"

        # title-format: Conventional Loan - Test <testId>
        Examples:
            | testId | BorrowerFirstName | BorrowerLastName | BorrowerFICO | CoBorrowerFirstName | CoBorrowerLastName | CoBorrowerFICO | PropertyType  | ZipCode | LoanAmount | Ltv | LoanType   | LoanPeriod | LoanProgram  | InterestRate |
            | 01     | John              | Doe              | 700          | Jane                | Doe                | 680            | Condominium   | 95123   | 200000     | 75  | Fixed      | 30         | Conventional | 7%           |
            | 02     | Conv_BFName_01    | Conv_BLName_01   | 659          | Conv_CFName_01      | Conv_CLName_01     | 520            | Condominium   | 95101   | 417999     | 2   | Fixed      | 30         | Conventional | 7.5%         |
            | 03     | Conv_BFName_02    | Conv_BLName_02   | 850          | Conv_CFName_02      | Conv_CLName_02     | 850            | Townhouse     | 95102   | 50001      | 79  | Fixed      | 30         | Conventional | 6.875%       |
            | 04     | Conv_BFName_03    | Conv_BLName_03   | 661          | Conv_CFName_03      | Conv_CLName_03     | 621            | Townhouse     | 95103   | 417999     | 0   | Fixed      | 15         | Conventional | 7.25%        |
            | 05     | Conv_BFName_04    | Conv_BLName_04   | 620          | Conv_CFName_04      | Conv_CLName_04     | 521            | Condominium   | 95104   | 417999     | 80  | Fixed      | 10         | Conventional | 7.625%       |
            | 06     | Conv_BFName_05    | Conv_BLName_05   | 849          | Conv_CFName_05      | Conv_CLName_05     | 520            | Townhouse     | 95105   | 999999     | 80  | Fixed      | 40         | Conventional | 7%           |
            | 07     | Conv_BFName_06    | Conv_BLName_06   | 621          | Conv_CFName_06      | Conv_CLName_06     | 620            | Condominium   | 95106   | 50001      | 80  | Fixed      | 30         | Conventional | 7.5%         |
            | 08     | Conv_BFName_07    | Conv_BLName_07   | 850          |                     |                    | None           | Condominium   | 95107   | 50000      | 1   | Fixed      | 30         | Conventional | 6.875%       |
            | 09     | Conv_BFName_08    | Conv_BLName_08   | 659          | Conv_CFName_08      | Conv_CLName_08     | 850            | Condominium   | 95108   | 1000000    | 80  | Fixed      | 30         | Conventional | 7.375%       |
            | 10     | Conv_BFName_09    | Conv_BLName_09   | 621          | Conv_CFName_09      | Conv_CLName_09     | 849            | Condominium   | 95109   | 417999     | 2   | Fixed      | 30         | Conventional | 7.5%         |
            | 11     | Conv_BFName_10    | Conv_BLName_10   | 659          | Conv_CFName_10      | Conv_CLName_10     | 621            | Condominium   | 95110   | 418001     | 80  | Fixed      | 30         | Conventional | 7.375%       |
            | 12     | Conv_BFName_11    | Conv_BLName_11   | 661          | Conv_CFName_11      | Conv_CLName_11     | 520            | Condominium   | 95111   | 418000     | 79  | Fixed      | 30         | Conventional | 7.375%       |
            | 13     | Conv_BFName_12    | Conv_BLName_12   | 621          | Conv_CFName_12      | Conv_CLName_12     | 850            | Condominium   | 95112   | 50000      | 79  | Fixed      | 30         | Conventional | 7.5%         |
            | 14     | Conv_BFName_13    | Conv_BLName_13   | 849          | Conv_CFName_13      | Conv_CLName_13     | 850            | Condominium   | 95113   | 50001      | 79  | Fixed      | 30         | Conventional | 6.875%       |
            | 15     | Conv_BFName_14    | Conv_BLName_14   | 659          |                     |                    | None           | Condominium   | 95114   | 418000     | 0   | Fixed      | 30         | Conventional | 7.375%       |
            | 16     | Conv_BFName_15    | Conv_BLName_15   | 620          | Conv_CFName_15      | Conv_CLName_15     | 619            | Condominium   | 95115   | 50001      | 0   | Fixed      | 30         | Conventional | 7.625%       |
            | 17     | Conv_BFName_16    | Conv_BLName_16   | 660          | Conv_CFName_16      | Conv_CLName_16     | 521            | Single Family | 95116   | 50001      | 79  | Adjustable | 40         | Conventional | 5.875%       |
            | 18     | Conv_BFName_050   | Conv_BLName_050  | 620          |                     |                    |                | Single Family | 95150   | 418001     | 2   | Fixed      | 30         | Conventional | 7.5%         |
