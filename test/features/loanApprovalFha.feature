Feature: Loan Application Submission and Approval

    Scenario Outline: Successful loan approval for FHA Loan
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

        # title-format: FHA Loan - Test <testId>
        Examples:
            | testId | BorrowerFirstName | BorrowerLastName | BorrowerFICO | CoBorrowerFirstName | CoBorrowerLastName | CoBorrowerFICO | PropertyType  | ZipCode | LoanAmount | Ltv | LoanType | LoanPeriod | LoanProgram | InterestRate |
            | 01     | John              | Doe              | 650          | Jane                | Doe                | None           | Townhouse     | 95123   | 400000     | 90  | Fixed    | 30         | FHA         | 7.625%       |
            | 02     | Fha_BFName_01     | Fha_BLName_01    | 660          | Fha_CFName_01       | Fha_CLName_01      | 519            | Condominium   | 95101   | 417999     | 2   | Fixed    | 30         | FHA         | 7.75%        |
            | 03     | Fha_BFName_02     | Fha_BLName_02    | 661          | Fha_CFName_02       | Fha_CLName_02      | 300            | Condominium   | 95102   | 418000     | 81  | Fixed    | 30         | FHA         | 8%           |
            | 04     | Fha_BFName_03     | Fha_BLName_03    | 301          | Fha_CFName_03       | Fha_CLName_03      | 520            | Condominium   | 95103   | 50000      | 100 | Fixed    | 30         | FHA         | 8%           |
            | 05     | Fha_BFName_04     | Fha_BLName_04    | 620          | Fha_CFName_04       | Fha_CLName_04      | 849            | Condominium   | 95104   | 50000      | 81  | Fixed    | 30         | FHA         | 7.75%        |
            | 06     | Fha_BFName_05     | Fha_BLName_05    | 300          | Fha_CFName_05       | Fha_CLName_05      | 621            | Condominium   | 95105   | 50000      | 79  | Fixed    | 30         | FHA         | 7.875%       |
            | 07     | Fha_BFName_06     | Fha_BLName_06    | 300          | Fha_CFName_06       | Fha_CLName_06      | 619            | Condominium   | 95106   | 417999     | 1   | Fixed    | 30         | FHA         | 8%           |
            | 08     | Fha_BFName_07     | Fha_BLName_07    | 849          | Fha_CFName_07       | Fha_CLName_07      | 301            | Condominium   | 95107   | 50000      | 0   | Fixed    | 30         | FHA         | 7.625%       |
            | 09     | Fha_BFName_08     | Fha_BLName_08    | 619          | Fha_CFName_08       | Fha_CLName_08      | 520            | Condominium   | 95108   | 50001      | 1   | Fixed    | 30         | FHA         | 8%           |
            | 10     | Fha_BFName_09     | Fha_BLName_09    | 619          | Fha_CFName_09       | Fha_CLName_09      | 620            | Condominium   | 95109   | 50000      | 0   | Fixed    | 30         | FHA         | 7.875%       |
            | 11     | Fha_BFName_10     | Fha_BLName_10    | 301          | Fha_CFName_10       | Fha_CLName_10      | 301            | Condominium   | 95110   | 418000     | 99  | Fixed    | 30         | FHA         | 8.375%       |
            | 12     | Fha_BFName_11     | Fha_BLName_11    | 301          | Fha_CFName_11       | Fha_CLName_11      | 620            | Condominium   | 95111   | 417999     | 2   | Fixed    | 30         | FHA         | 7.875%       |
            | 13     | Fha_BFName_12     | Fha_BLName_12    | 619          | Fha_CFName_12       | Fha_CLName_12      | 521            | Condominium   | 95112   | 50000      | 80  | Fixed    | 30         | FHA         | 8%           |
            | 14     | Fha_BFName_13     | Fha_BLName_13    | 850          | Fha_CFName_13       | Fha_CLName_13      | 301            | Condominium   | 95113   | 50001      | 81  | Fixed    | 30         | FHA         | 7.625%       |
            | 15     | Fha_BFName_14     | Fha_BLName_14    | 660          | Fha_CFName_14       | Fha_CLName_14      | 300            | Condominium   | 95114   | 50001      | 0   | Fixed    | 30         | FHA         | 8%           |
            | 16     | Fha_BFName_15     | Fha_BLName_15    | 621          | Fha_CFName_15       | Fha_CLName_15      |                | Condominium   | 95115   | 50001      | 100 | Fixed    | 30         | FHA         | 7.75%        |
            | 17     | Fha_BFName_16     | Fha_BLName_16    | 620          |                     |                    | 850            | Condominium   | 95116   | 50001      | 100 | Fixed    | 30         | FHA         | 7.75%        |
            | 18     | Fha_BFName_17     | Fha_BLName_17    | 850          | Fha_CFName_17       | Fha_CLName_17      | 520            | Condominium   | 95117   | 50001      | 100 | Fixed    | 30         | FHA         | 7.25%        |
            | 19     | Fha_BFName_18     | Fha_BLName_18    | 301          | Fha_CFName_18       | Fha_CLName_18      |                | Condominium   | 95118   | 50001      | 100 | Fixed    | 30         | FHA         | 7.875%       |
            | 20     | Fha_BFName_19     | Fha_BLName_19    | 849          |                     |                    | 849            | Condominium   | 95119   | 50001      | 100 | Fixed    | 30         | FHA         | 7.125%       |
            | 21     | Fha_BFName_20     | Fha_BLName_20    | 661          | Fha_CFName_20       | Fha_CLName_20      | 849            | Condominium   | 95120   | 50001      | 100 | Fixed    | 30         | FHA         | 7.5%         |
            | 22     | Fha_BFName_21     | Fha_BLName_21    | 661          | Fha_CFName_21       | Fha_CLName_21      | 521            | Condominium   | 95121   | 50001      | 100 | Fixed    | 30         | FHA         | 7.625%       |
            | 23     | Fha_BFName_22     | Fha_BLName_22    | 849          | Fha_CFName_22       | Fha_CLName_22      | 519            | Condominium   | 95122   | 50001      | 100 | Fixed    | 30         | FHA         | 7.375%       |
            | 24     | Fha_BFName_23     | Fha_BLName_23    | 619          | Fha_CFName_23       | Fha_CLName_23      | 519            | Condominium   | 95123   | 50001      | 100 | Fixed    | 30         | FHA         | 8.125%       |
            | 25     | Fha_BFName_24     | Fha_BLName_24    | 850          | Fha_CFName_24       | Fha_CLName_24      | 519            | Condominium   | 95124   | 50001      | 100 | Fixed    | 30         | FHA         | 7.375%       |
            | 26     | Fha_BFName_25     | Fha_BLName_25    | 620          | Fha_CFName_25       | Fha_CLName_25      | 621            | Condominium   | 95125   | 50001      | 100 | Fixed    | 30         | FHA         | 7.75%        |
            | 27     | Fha_BFName_26     | Fha_BLName_26    | 300          | Fha_CFName_26       | Fha_CLName_26      | 300            | Condominium   | 95126   | 50001      | 100 | Fixed    | 30         | FHA         | 8.375%       |
            | 28     | Fha_BFName_27     | Fha_BLName_27    | 660          | Fha_CFName_27       | Fha_CLName_27      | 520            | Condominium   | 95127   | 50001      | 100 | Fixed    | 30         | FHA         | 7.625%       |
            | 29     | Fha_BFName_044    | Fha_BLName_044   | 621          | Fha_CFName_044      | Fha_CLName_044     | 619            | Single Family | 951044  | 418000     | 99  | Fixed    | 30         | FHA         | 7.875%       |
            | 30     | Fha_BFName_051    | Fha_BLName_051   | 619          | Fha_CFName_051      | Fha_CLName_051     | 850            | Single Family | 951051  | 418000     | 2   | Fixed    | 30         | FHA         | 7.875%       |
