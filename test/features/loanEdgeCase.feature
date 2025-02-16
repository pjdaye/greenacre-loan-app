Feature: Loan Application Submission and Approval

    Scenario Outline: Loan application denied for FICO our of bounds
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

        # title-format: Edge Case - Test <testId>
        Examples:
            | testId | BorrowerFirstName | BorrowerLastName  | BorrowerFICO | CoBorrowerFirstName | CoBorrowerLastName | CoBorrowerFICO | PropertyType      | ZipCode | LoanAmount | Ltv | LoanType   | LoanPeriod | LoanProgram | InterestRate |
            | 01     | Reject_BFName_003 | Reject_BLName_003 | 301          | Reject_CFName_003   | Reject_CLName_003  | 300            | Townhouse         | 95003   | 50001      | 2   | Adjustable | 15         | NA          | NA           |
            | 02     | Reject_BFName_004 | Reject_BLName_004 | 619          | Reject_CFName_004   | Reject_CLName_004  | 301            | Multi-Family Unit | 95004   | 417999     | 79  | Fixed      | 15         | NA          | NA           |
            | 03     | Reject_BFName_005 | Reject_BLName_005 | 620          | Reject_CFName_005   | Reject_CLName_005  | 519            | Commercial        | 95005   | 418000     | 80  | Fixed      | 30         | NA          | NA           |
            | 04     | Reject_BFName_006 | Reject_BLName_006 | 621          | Reject_CFName_006   | Reject_CLName_006  | 520            | Commercial        | 95006   | 418001     | 81  | Adjustable | 40         | NA          | NA           |
            | 05     | Reject_BFName_007 | Reject_BLName_007 | 659          | Reject_CFName_007   | Reject_CLName_007  | 521            | Multi-Family Unit | 95007   | 999999     | 99  | Adjustable | 30         | NA          | NA           |
            | 06     | Reject_BFName_008 | Reject_BLName_008 | 660          | Reject_CFName_008   | Reject_CLName_008  | 619            | Townhouse         | 95008   | 1000000    | 100 | Fixed      | 40         | NA          | NA           |
            | 07     | Reject_BFName_009 | Reject_BLName_009 | 661          | Reject_CFName_009   | Reject_CLName_009  | 620            | Condominium       | 95009   | 1000001    | 101 | Fixed      | 40         | NA          | NA           |
            | 08     | Reject_BFName_010 | Reject_BLName_010 | 849          | Reject_CFName_010   | Reject_CLName_010  | 621            | Single Family     | 95010   | 1000001    | 100 | Adjustable | 30         | NA          | NA           |
            | 09     | Reject_BFName_011 | Reject_BLName_011 | 850          | Reject_CFName_011   | Reject_CLName_011  | 849            | Single Family     | 95011   | 1000000    | 99  | Adjustable | 15         | NA          | NA           |
            | 10     | Reject_BFName_015 | Reject_BLName_015 | 849          | Reject_CFName_015   | Reject_CLName_015  | 620            | Commercial        | 95015   | 49999      | 1   | Adjustable | 15         | NA          | NA           |
            | 11     | Reject_BFName_016 | Reject_BLName_016 | 661          | Reject_CFName_016   | Reject_CLName_016  | 619            | Commercial        | 95016   | 50000      | 2   | Adjustable | 10         | NA          | NA           |
            | 12     | Reject_BFName_018 | Reject_BLName_018 | 621          | Reject_CFName_018   | Reject_CLName_018  | 519            | Townhouse         | 95018   | 50000      | 101 | Adjustable | 15         | NA          | NA           |
            | 13     | Reject_BFName_019 | Reject_BLName_019 | 620          | Reject_CFName_019   | Reject_CLName_019  | 301            | Townhouse         | 95019   | 49999      | 99  | Adjustable | 40         | NA          | NA           |
            | 14     | Reject_BFName_020 | Reject_BLName_020 | 619          | Reject_CFName_020   | Reject_CLName_020  | 300            | Condominium       | 95020   | 418001     | 99  | Fixed      | 30         | NA          | NA           |
            | 15     | Reject_BFName_022 | Reject_BLName_022 | 300          |                     |                    |                | Multi-Family Unit | 95022   | 50001      | 80  | Fixed      | 15         | NA          | NA           |
            | 16     | Reject_BFName_024 | Reject_BLName_024 | 619          | Reject_CFName_024   | Reject_CLName_024  | 849            | Townhouse         | 95024   | 1000001    | 1   | Fixed      | 40         | NA          | NA           |
            | 17     | Reject_BFName_025 | Reject_BLName_025 | 621          | Reject_CFName_025   | Reject_CLName_025  | 621            | Multi-Family Unit | 95025   | 49999      | 2   | Fixed      | 10         | NA          | NA           |
            | 18     | Reject_BFName_027 | Reject_BLName_027 | 660          |                     |                    |                | Commercial        | 95027   | 999999     | 101 | Adjustable | 10         | NA          | NA           |
            | 19     | Reject_BFName_028 | Reject_BLName_028 | 849          | Reject_CFName_028   | Reject_CLName_028  | 521            | Condominium       | 95028   | 418000     | 100 | Fixed      | 10         | NA          | NA           |
            | 20     | Reject_BFName_030 | Reject_BLName_030 | 300          | Reject_CFName_030   | Reject_CLName_030  | 301            | Single Family     | 95030   | 999999     | 2   | Fixed      | 40         | NA          | NA           |
            | 21     | Reject_BFName_031 | Reject_BLName_031 | 301          | Reject_CFName_031   | Reject_CLName_031  | 519            | Single Family     | 95031   | 418001     | 1   | Fixed      | 40         | NA          | NA           |
            | 22     | Reject_BFName_032 | Reject_BLName_032 | 620          | Reject_CFName_032   | Reject_CLName_032  | 520            | Multi-Family Unit | 95032   | 1000001    | 0   | Fixed      | 15         | NA          | NA           |
            | 23     | Reject_BFName_034 | Reject_BLName_034 | 659          | Reject_CFName_034   | Reject_CLName_034  | 300            | Commercial        | 95034   | 1000000    | 79  | Fixed      | 10         | NA          | NA           |
            | 24     | Reject_BFName_035 | Reject_BLName_035 | 849          | Reject_CFName_035   | Reject_CLName_035  | 619            | Multi-Family Unit | 95035   | 418001     | 81  | Fixed      | 15         | NA          | NA           |
            | 25     | Reject_BFName_036 | Reject_BLName_036 | 660          | Reject_CFName_036   | Reject_CLName_036  | 620            | Multi-Family Unit | 95036   | 50000      | 99  | Fixed      | 30         | NA          | NA           |
            | 26     | Reject_BFName_037 | Reject_BLName_037 | 619          |                     |                    |                | Condominium       | 95037   | 1000000    | 81  | Adjustable | 10         | NA          | NA           |
            | 27     | Reject_BFName_040 | Reject_BLName_040 | 301          | Reject_CFName_040   | Reject_CLName_040  | 850            | Condominium       | 95040   | 49999      | 0   | Fixed      | 10         | NA          | NA           |
            | 28     | Reject_BFName_043 | Reject_BLName_043 | 850          | Reject_CFName_043   | Reject_CLName_043  | 620            | Single Family     | 95043   | 417999     | 81  | Fixed      | 10         | NA          | NA           |
            | 29     | Reject_BFName_046 | Reject_BLName_046 | 659          | Reject_CFName_046   | Reject_CLName_046  | 519            | Multi-Family Unit | 95046   | 50001      | 100 | Fixed      | 10         | NA          | NA           |
            | 30     | Reject_BFName_047 | Reject_BLName_047 | 850          | Reject_CFName_047   | Reject_CLName_047  | 621            | Condominium       | 95047   | 418001     | 101 | Fixed      | 40         | NA          | NA           |
            | 31     | Reject_BFName_049 | Reject_BLName_049 | 300          | Reject_CFName_049   | Reject_CLName_049  | 520            | Single Family     | 95049   | 49999      | 101 | Fixed      | 30         | NA          | NA           |
            | 32     | Reject_BFName_054 | Reject_BLName_054 | 301          | Reject_CFName_054   | Reject_CLName_054  | 849            | Condominium       | 95054   | 999999     | 79  | Fixed      | 10         | NA          | NA           |
            | 33     | Reject_BFName_055 | Reject_BLName_055 | 661          | Reject_CFName_055   | Reject_CLName_055  | 301            | Multi-Family Unit | 95055   | 1000000    | 1   | Fixed      | 10         | NA          | NA           |
            | 34     | Reject_BFName_056 | Reject_BLName_056 | 659          | Reject_CFName_056   | Reject_CLName_056  | 620            | Townhouse         | 95056   | 418000     | 101 | Fixed      | 15         | NA          | NA           |
            | 35     | Reject_BFName_058 | Reject_BLName_058 | 301          | Reject_CFName_058   | Reject_CLName_058  | 619            | Condominium       | 95058   | 1000001    | 80  | Fixed      | 30         | NA          | NA           |
            | 36     | Reject_BFName_059 | Reject_BLName_059 | 619          | Reject_CFName_059   | Reject_CLName_059  | 621            | Commercial        | 95059   | 50001      | 99  | Fixed      | 30         | NA          | NA           |
            | 37     | Reject_BFName_060 | Reject_BLName_060 | 620          | Reject_CFName_060   | Reject_CLName_060  | 300            | Single Family     | 95060   | 999999     | 1   | Fixed      | 30         | NA          | NA           |
            | 38     | Reject_BFName_061 | Reject_BLName_061 | 300          | Reject_CFName_061   | Reject_CLName_061  | 521            | Townhouse         | 95061   | 418001     | 0   | Fixed      | 30         | NA          | NA           |
            | 39     | Reject_BFName_064 | Reject_BLName_064 | 849          |                     |                    |                | Townhouse         | 95064   | 417999     | 99  | Fixed      | 40         | NA          | NA           |
            | 40     | Reject_BFName_065 | Reject_BLName_065 | 661          | Reject_CFName_065   | Reject_CLName_065  | 850            | Multi-Family Unit | 95065   | 418001     | 99  | Fixed      | 30         | NA          | NA           |
            | 41     | Reject_BFName_066 | Reject_BLName_066 | 849          | Reject_CFName_066   | Reject_CLName_066  | 300            | Condominium       | 95066   | 50001      | 101 | Fixed      | 30         | NA          | NA           |
            | 42     | Reject_BFName_069 | Reject_BLName_069 | 619          | Reject_CFName_069   | Reject_CLName_069  | 619            | Condominium       | 95069   | 49999      | 101 | Fixed      | 30         | NA          | NA           |
            | 43     | Reject_BFName_070 | Reject_BLName_070 | 301          | Reject_CFName_070   | Reject_CLName_070  | 621            | Commercial        | 95070   | 418000     | 1   | Fixed      | 30         | NA          | NA           |
            | 44     | Reject_BFName_072 | Reject_BLName_072 | 659          | Reject_CFName_072   | Reject_CLName_072  | 301            | Condominium       | 95072   | 1000001    | 81  | Fixed      | 40         | NA          | NA           |
            | 45     | Reject_BFName_073 | Reject_BLName_073 | 621          | Reject_CFName_073   | Reject_CLName_073  | 521            | Commercial        | 95073   | 1000000    | 1   | Fixed      | 30         | NA          | NA           |
            | 46     | Reject_BFName_074 | Reject_BLName_074 | 300          | Reject_CFName_074   | Reject_CLName_074  | 620            | Condominium       | 95074   | 1000000    | 100 | Fixed      | 30         | NA          | NA           |
            | 47     | Reject_BFName_075 | Reject_BLName_075 | 659          | Reject_CFName_075   | Reject_CLName_075  | 619            | Condominium       | 95075   | 49999      | 1   | Fixed      | 30         | NA          | NA           |
            | 48     | Reject_BFName_077 | Reject_BLName_077 | 660          | Reject_CFName_077   | Reject_CLName_077  | 850            | Condominium       | 95077   | 1000001    | 1   | Fixed      | 30         | NA          | NA           |
            | 49     | Reject_BFName_081 | Reject_BLName_081 | 850          | Reject_CFName_081   | Reject_CLName_081  | 619            | Condominium       | 95081   | 999999     | 100 | Fixed      | 30         | NA          | NA           |
            | 50     | Reject_BFName_082 | Reject_BLName_082 | 661          | Reject_CFName_082   | Reject_CLName_082  | 519            | Condominium       | 95082   | 1000000    | 79  | Fixed      | 30         | NA          | NA           |
            | 51     | Reject_BFName_083 | Reject_BLName_083 | 621          | Reject_CFName_083   | Reject_CLName_083  | 300            | Condominium       | 95083   | 1000001    | 0   | Fixed      | 30         | NA          | NA           |
            | 52     | Reject_BFName_087 | Reject_BLName_087 | 660          | Reject_CFName_087   | Reject_CLName_087  | 301            | Condominium       | 95087   | 418001     | 100 | Fixed      | 30         | NA          | NA           |
            | 53     | Reject_BFName_088 | Reject_BLName_088 | 301          | Reject_CFName_088   | Reject_CLName_088  | 521            | Condominium       | 95088   | 49999      | 81  | Fixed      | 30         | NA          | NA           |
            | 54     | Reject_BFName_091 | Reject_BLName_091 | 850          | Reject_CFName_091   | Reject_CLName_091  | 300            | Condominium       | 95091   | 49999      | 80  | Fixed      | 30         | NA          | NA           |
            | 55     | Reject_BFName_092 | Reject_BLName_092 | 660          | Reject_CFName_092   | Reject_CLName_092  | 621            | Condominium       | 95092   | 999999     | 81  | Fixed      | 30         | NA          | NA           |
            | 56     | Reject_BFName_094 | Reject_BLName_094 | 300          | Reject_CFName_094   | Reject_CLName_094  | 849            | Condominium       | 95094   | 49999      | 100 | Fixed      | 30         | NA          | NA           |
            | 57     | Reject_BFName_095 | Reject_BLName_095 | 661          |                     |                    |                | Condominium       | 95095   | 999999     | 100 | Fixed      | 30         | NA          | NA           |
            | 58     | Reject_BFName_096 | Reject_BLName_096 | 300          | Reject_CFName_096   | Reject_CLName_096  | 519            | Condominium       | 95096   | 1000001    | 81  | Fixed      | 30         | NA          | NA           |
            | 59     | Reject_BFName_098 | Reject_BLName_098 | 620          | Reject_CFName_098   | Reject_CLName_098  | 620            | Condominium       | 95098   | 999999     | 100 | Fixed      | 30         | NA          | NA           |
            | 60     | Reject_BFName_101 | Reject_BLName_101 | 300          | Reject_CFName_101   | Reject_CLName_101  | 850            | Condominium       | 95101   | 418000     | 101 | Fixed      | 30         | NA          | NA           |
            | 61     | Reject_BFName_102 | Reject_BLName_102 | 850          | Reject_CFName_102   | Reject_CLName_102  | 521            | Condominium       | 95102   | 50001      | 101 | Fixed      | 30         | NA          | NA           |
            | 62     | Reject_BFName_104 | Reject_BLName_104 | 621          | Reject_CFName_104   | Reject_CLName_104  | 301            | Condominium       | 95104   | 50001      | 101 | Fixed      | 30         | NA          | NA           |
            | 63     | Reject_BFName_108 | Reject_BLName_108 | 659          | Reject_CFName_108   | Reject_CLName_108  | 849            | Condominium       | 95108   | 50001      | 101 | Fixed      | 30         | NA          | NA           |
