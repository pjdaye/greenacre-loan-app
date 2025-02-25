Feature: Loan Application Submission and Approval

    Scenario Outline: Loan application approval at boundary value for Loan Amount
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
        Then an alert is displayed with message "<AlertMessage>"

        # title-format: FICO Edge Case - Test <testId>
        Examples:
            | testId | BorrowerFirstName | BorrowerLastName  | BorrowerFICO | CoBorrowerFirstName | CoBorrowerLastName | CoBorrowerFICO | PropertyType      | ZipCode | LoanAmount | Ltv | LoanType   | LoanPeriod | AlertMessage                                  |
            | 01     | Reject_BFName_001 | Reject_BLName_001 | 299          |                     |                    |                | Single Family     | 95001   | 49999      | 0   | Fixed      | 10         | 01-Value-must-be-greater-than-or-equal-to-300 |
            | 02     | Reject_BFName_002 | Reject_BLName_002 | 300          | Reject_CFName_002   | Reject_CLName_002  | 299            | Condominium       | 95002   | 50000      | 1   | Adjustable | 10         | 02-Value-must-be-greater-than-or-equal-to-300 |
            | 03     | Reject_BFName_012 | Reject_BLName_012 | 851          | Reject_CFName_012   | Reject_CLName_012  | 850            | Condominium       | 95012   | 999999     | 81  | Fixed      | 15         | 03-Value-must-be-less-than-or-equal-to-850    |
            | 04     | Reject_BFName_013 | Reject_BLName_013 | 851          | Reject_CFName_013   | Reject_CLName_013  | 851            | Townhouse         | 95013   | 418001     | 80  | Adjustable | 10         | 04-Value-must-be-less-than-or-equal-to-850    |
            | 05     | Reject_BFName_014 | Reject_BLName_014 | 850          | Reject_CFName_014   | Reject_CLName_014  | 851            | Multi-Family Unit | 95014   | 418000     | 0   | Adjustable | 40         | 05-Value-must-be-less-than-or-equal-to-850    |
            | 06     | Reject_BFName_021 | Reject_BLName_021 | 301          | Reject_CFName_021   | Reject_CLName_021  | 299            | Multi-Family Unit | 95021   | 1000000    | 101 | Fixed      | 30         | 06-Value-must-be-greater-than-or-equal-to-300 |
            | 07     | Reject_BFName_023 | Reject_BLName_023 | 299          | Reject_CFName_023   | Reject_CLName_023  | 850            | Commercial        | 95023   | 417999     | 100 | Adjustable | 40         | 07-Value-must-be-greater-than-or-equal-to-300 |
            | 08     | Reject_BFName_026 | Reject_BLName_026 | 659          | Reject_CFName_026   | Reject_CLName_026  | 851            | Single Family     | 95026   | 50000      | 81  | Fixed      | 30         | 08-Value-must-be-less-than-or-equal-to-850    |
            | 09     | Reject_BFName_029 | Reject_BLName_029 | 299          | Reject_CFName_029   | Reject_CLName_029  | 299            | Townhouse         | 95029   | 418000     | 81  | Fixed      | 15         | 09-Value-must-be-greater-than-or-equal-to-300 |
            | 10     | Reject_BFName_033 | Reject_BLName_033 | 851          | Reject_CFName_033   | Reject_CLName_033  | 849            | Commercial        | 95033   | 50001      | 0   | Fixed      | 30         | 10-Value-must-be-less-than-or-equal-to-850    |
            | 11     | Reject_BFName_038 | Reject_BLName_038 | 851          | Reject_CFName_038   | Reject_CLName_038  | 301            | Condominium       | 95038   | 50001      | 1   | Fixed      | 30         | 11-Value-must-be-less-than-or-equal-to-850    |
            | 12     | Reject_BFName_039 | Reject_BLName_039 | 661          | Reject_CFName_039   | Reject_CLName_039  | 299            | Single Family     | 95039   | 49999      | 80  | Fixed      | 30         | 12-Value-must-be-greater-than-or-equal-to-300 |
            | 13     | Reject_BFName_041 | Reject_BLName_041 | 300          | Reject_CFName_041   | Reject_CLName_041  | 851            | Commercial        | 95041   | 1000001    | 99  | Fixed      | 10         | 13-Value-must-be-less-than-or-equal-to-850    |
            | 14     | Reject_BFName_042 | Reject_BLName_042 | 299          | Reject_CFName_042   | Reject_CLName_042  | 849            | Multi-Family Unit | 95042   | 418001     | 100 | Fixed      | 30         | 14-Value-must-be-greater-than-or-equal-to-300 |
            | 15     | Reject_BFName_045 | Reject_BLName_045 | 851          | Reject_CFName_045   | Reject_CLName_045  | 300            | Multi-Family Unit | 95045   | 50000      | 100 | Fixed      | 40         | 15-Value-must-be-less-than-or-equal-to-850    |
            | 16     | Reject_BFName_048 | Reject_BLName_048 | 299          | Reject_CFName_048   | Reject_CLName_048  | 521            | Condominium       | 95048   | 1000001    | 2   | Fixed      | 15         | 16-Value-must-be-greater-than-or-equal-to-300 |
            | 17     | Reject_BFName_052 | Reject_BLName_052 | 660          | Reject_CFName_052   | Reject_CLName_052  | 851            | Condominium       | 95052   | 49999      | 79  | Fixed      | 15         | 17-Value-must-be-less-than-or-equal-to-850    |
            | 18     | Reject_BFName_053 | Reject_BLName_053 | 621          | Reject_CFName_053   | Reject_CLName_053  | 299            | Condominium       | 95053   | 999999     | 100 | Fixed      | 15         | 18-Value-must-be-greater-than-or-equal-to-300 |
            | 19     | Reject_BFName_057 | Reject_BLName_057 | 851          | Reject_CFName_057   | Reject_CLName_057  | 621            | Single Family     | 95057   | 1000000    | 2   | Fixed      | 30         | 19-Value-must-be-less-than-or-equal-to-850    |
            | 20     | Reject_BFName_062 | Reject_BLName_062 | 299          | Reject_CFName_062   | Reject_CLName_062  | 301            | Commercial        | 95062   | 50000      | 80  | Fixed      | 30         | 20-Value-must-be-greater-than-or-equal-to-300 |
            | 21     | Reject_BFName_063 | Reject_BLName_063 | 850          | Reject_CFName_063   | Reject_CLName_063  | 299            | Commercial        | 95063   | 1000001    | 2   | Fixed      | 40         | 21-Value-must-be-greater-than-or-equal-to-300 |
            | 22     | Reject_BFName_067 | Reject_BLName_067 | 299          | Reject_CFName_067   | Reject_CLName_067  | 520            | Condominium       | 95067   | 1000000    | 99  | Fixed      | 10         | 22-Value-must-be-greater-than-or-equal-to-300 |
            | 23     | Reject_BFName_068 | Reject_BLName_068 | 620          | Reject_CFName_068   | Reject_CLName_068  | 851            | Condominium       | 95068   | 1000000    | 101 | Fixed      | 30         | 23-Value-must-be-less-than-or-equal-to-850    |
            | 24     | Reject_BFName_071 | Reject_BLName_071 | 851          | Reject_CFName_071   | Reject_CLName_071  | 519            | Condominium       | 95071   | 49999      | 99  | Fixed      | 30         | 24-Value-must-be-less-than-or-equal-to-850    |
            | 25     | Reject_BFName_076 | Reject_BLName_076 | 851          | Reject_CFName_076   | Reject_CLName_076  | 299            | Condominium       | 95076   | 417999     | 101 | Fixed      | 30         | 25-Value-must-be-less-than-or-equal-to-850    |
            | 26     | Reject_BFName_078 | Reject_BLName_078 | 619          | Reject_CFName_078   | Reject_CLName_078  | 851            | Condominium       | 95078   | 999999     | 100 | Fixed      | 30         | 26-Value-must-be-less-than-or-equal-to-850    |
            | 27     | Reject_BFName_079 | Reject_BLName_079 | 299          | Reject_CFName_079   | Reject_CLName_079  | 519            | Condominium       | 95079   | 999999     | 0   | Fixed      | 30         | 27-Value-must-be-greater-than-or-equal-to-300 |
            | 28     | Reject_BFName_080 | Reject_BLName_080 | 849          | Reject_CFName_080   | Reject_CLName_080  | 299            | Condominium       | 95080   | 1000000    | 0   | Fixed      | 30         | 28-Value-must-be-greater-than-or-equal-to-300 |
            | 29     | Reject_BFName_084 | Reject_BLName_084 | 299          | Reject_CFName_084   | Reject_CLName_084  | 620            | Condominium       | 95084   | 418001     | 79  | Fixed      | 30         | 29-Value-must-be-greater-than-or-equal-to-300 |
            | 30     | Reject_BFName_085 | Reject_BLName_085 | 661          | Reject_CFName_085   | Reject_CLName_085  | 851            | Condominium       | 95085   | 50001      | 1   | Fixed      | 30         | 30-Value-must-be-less-than-or-equal-to-850    |
            | 31     | Reject_BFName_086 | Reject_BLName_086 | 620          | Reject_CFName_086   | Reject_CLName_086  | 299            | Condominium       | 95086   | 50001      | 79  | Fixed      | 30         | 31-Value-must-be-greater-than-or-equal-to-300 |
            | 32     | Reject_BFName_089 | Reject_BLName_089 | 851          |                     |                    |                | Condominium       | 95089   | 1000001    | 79  | Fixed      | 30         | 32-Value-must-be-less-than-or-equal-to-850    |
            | 33     | Reject_BFName_090 | Reject_BLName_090 | 299          | Reject_CFName_090   | Reject_CLName_090  | 619            | Condominium       | 95090   | 50001      | 1   | Fixed      | 30         | 33-Value-must-be-greater-than-or-equal-to-300 |
            | 34     | Reject_BFName_093 | Reject_BLName_093 | 849          | Reject_CFName_093   | Reject_CLName_093  | 851            | Condominium       | 95093   | 417999     | 2   | Fixed      | 30         | 34-Value-must-be-less-than-or-equal-to-850    |
            | 35     | Reject_BFName_097 | Reject_BLName_097 | 851          | Reject_CFName_097   | Reject_CLName_097  | 619            | Condominium       | 95097   | 418000     | 79  | Fixed      | 30         | 35-Value-must-be-less-than-or-equal-to-850    |
            | 36     | Reject_BFName_099 | Reject_BLName_099 | 660          | Reject_CFName_099   | Reject_CLName_099  | 299            | Condominium       | 95099   | 418001     | 99  | Fixed      | 30         | 36-Value-must-be-greater-than-or-equal-to-300 |
            | 37     | Reject_BFName_100 | Reject_BLName_100 | 299          | Reject_CFName_100   | Reject_CLName_100  | 300            | Condominium       | 95100   | 417999     | 101 | Fixed      | 30         | 37-Value-must-be-greater-than-or-equal-to-300 |
            | 38     | Reject_BFName_103 | Reject_BLName_103 | 851          | Reject_CFName_103   | Reject_CLName_103  | 620            | Condominium       | 95103   | 50001      | 100 | Fixed      | 30         | 38-Value-must-be-less-than-or-equal-to-850    |
            | 39     | Reject_BFName_105 | Reject_BLName_105 | 851          | Reject_CFName_105   | Reject_CLName_105  | 521            | Condominium       | 95105   | 50001      | 100 | Fixed      | 30         | 39-Value-must-be-less-than-or-equal-to-850    |
            | 40     | Reject_BFName_106 | Reject_BLName_106 | 619          | Reject_CFName_106   | Reject_CLName_106  | 299            | Condominium       | 95106   | 50001      | 100 | Fixed      | 30         | 40-Value-must-be-greater-than-or-equal-to-300 |
            | 41     | Reject_BFName_107 | Reject_BLName_107 | 299          | Reject_CFName_107   | Reject_CLName_107  | 621            | Condominium       | 95107   | 50001      | 100 | Fixed      | 30         | 41-Value-must-be-greater-than-or-equal-to-300 |
            | 42     | Reject_BFName_109 | Reject_BLName_109 | 301          | Reject_CFName_109   | Reject_CLName_109  | 851            | Condominium       | 95109   | 50001      | 100 | Fixed      | 30         | 42-Value-must-be-less-than-or-equal-to-850    |
            | 43     | Reject_BFName_110 | Reject_BLName_110 | 659          | Reject_CFName_110   | Reject_CLName_110  | 299            | Condominium       | 95110   | 50001      | 100 | Fixed      | 30         | 43-Value-must-be-greater-than-or-equal-to-300 |
            | 44     | Reject_BFName_111 | Reject_BLName_111 | 299          | Reject_CFName_111   | Reject_CLName_111  | 851            | Condominium       | 95111   | 50001      | 100 | Fixed      | 30         | 44-Value-must-be-less-than-or-equal-to-850    |
            | 45     | Reject_BFName_112 | Reject_BLName_112 | 851          | Reject_CFName_112   | Reject_CLName_112  | 520            | Condominium       | 95112   | 50001      | 100 | Fixed      | 30         | 45-Value-must-be-less-than-or-equal-to-850    |
            | 46     | Reject_BFName_113 | Reject_BLName_113 | 621          | Reject_CFName_113   | Reject_CLName_113  | 851            | Condominium       | 95113   | 50001      | 100 | Fixed      | 30         | 46-Value-must-be-less-than-or-equal-to-850    |
