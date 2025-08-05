Feature: Loan Application Processing

    Scenario Outline: Loan Approval at Program Boundaries <test_id>
        Given a borrower with the following attributes:
            | Attribute        | Value              |
            | Borrower FICO    | <Borrower FICO>    |
            | Co-Borrower FICO | <Co-Borrower FICO> |
            | Property Type    | <Property Type>    |
            | Loan Amount      | <Loan Amount>      |
            | LTV              | <LTV>              |
            | Loan Type        | <Loan Type>        |
            | Loan Period      | <Loan Period>      |
        When the loan application is submitted
        Then the application result is "<Approval>" with "<Loan Program>"

        Examples:
            | test_id | Borrower FICO | Co-Borrower FICO | Property Type     | Loan Amount | LTV    | Loan Type  | Loan Period | Approval | Loan Program |
            | 01      | 660           | 620              | Single Family     | 418000      | 80     | Fixed      | 30          | Approved | Jumbo        |
            | 02      | 650           | None             | Condominium       | 417999      | 80     | Adjustable | 10          | Approved | Conventional |
            | 03      | 300           | None             | Townhouse         | 150000      | 100    | Fixed      | 15          | Approved | FHA          |
            | 04      | 720           | 700              | Townhouse         | 400000      | 100.01 | Fixed      | 30          | Denial   | N/A          |
            | 05      | 680           | None             | Multi-Family Unit | 300000      | 95     | Fixed      | 30          | Denial   | N/A          |
            | 06      | 700           | 650              | Townhouse         | 500000      | 78     | Fixed      | 30          | Approved | Jumbo        |
            | 07      | 619           | None             | Condominium       | 200000      | 80     | Fixed      | 15          | Approved | FHA          |
            | 08      | 580           | 619              | Condominium       | 417999      | 80.0   | Adjustable | 15          | Denial   | N/A          |
            | 09      | 850           | 519              | Townhouse         | 500000      | 79.99  | Fixed      | 40          | Denial   | N/A          |
            | 10      | 619           | 520              | Commercial        | 418001      | 80.01  | Adjustable | 30          | Denial   | N/A          |
            | 11      | 850           | 619              | Condominium       | 1000000     | 99.99  | Fixed      | 30          | Denial   | N/A          |
            | 12      | 620           | 519              | Single Family     | 50000       | 80.01  | Fixed      | 15          | Approved | FHA          |
            | 13      | 661           | 520              | Townhouse         | 418000      | 80.0   | Fixed      | 10          | Approved | Conventional |
            | 14      | 619           | None             | Single Family     | 417999      | 100.0  | Adjustable | 40          | Denial   | N/A          |
            | 15      | 659           | 520              | Condominium       | 50000       | 79.99  | Adjustable | 40          | Approved | Conventional |
            | 16      | 621           | 300              | Single Family     | 500000      | 80.0   | Adjustable | 30          | Denial   | N/A          |
            | 17      | 849           | 619              | Commercial        | 418000      | 80.01  | Fixed      | 40          | Denial   | N/A          |
            | 18      | 849           | 519              | Townhouse         | 417999      | 100.01 | Adjustable | 30          | Denial   | N/A          |
            | 19      | 300           | 519              | Townhouse         | 418001      | 99.99  | Adjustable | 10          | Denial   | N/A          |
            | 20      | 301           | 300              | Multi-Family Unit | 418000      | 99.99  | Adjustable | 15          | Denial   | N/A          |
            | 21      | 850           | 520              | Condominium       | 500000      | 100.01 | Fixed      | 10          | Denial   | N/A          |
            | 22      | 660           | 619              | Multi-Family Unit | 50000       | 100.0  | Fixed      | 10          | Denial   | N/A          |
            | 23      | 850           | 300              | Multi-Family Unit | 418001      | 80.01  | Adjustable | 40          | Denial   | N/A          |
            | 24      | 300           | 619              | Single Family     | 500000      | 100.01 | Fixed      | 15          | Denial   | N/A          |
            | 25      | 620           | None             | Townhouse         | 1000000     | 80.0   | Fixed      | 10          | Approved | Conventional |
            | 26      | 580           | 519              | Commercial        | 1000000     | 100.0  | Fixed      | 30          | Denial   | N/A          |
            | 27      | 620           | 300              | Condominium       | 500000      | 100.0  | Adjustable | 40          | Denial   | N/A          |
            | 28      | 621           | 519              | Commercial        | 417999      | 99.99  | Fixed      | 40          | Denial   | N/A          |
            | 29      | 619           | 300              | Townhouse         | 1000000     | 79.99  | Fixed      | 10          | Denial   | N/A          |
            | 30      | 849           | 620              | Multi-Family Unit | 418001      | 80.0   | Fixed      | 40          | Approved | Jumbo        |
            | 31      | 660           | 519              | Condominium       | 418000      | 100.01 | Adjustable | 15          | Denial   | N/A          |
            | 32      | 659           | 850              | Single Family     | 418001      | 100.01 | Fixed      | 15          | Denial   | N/A          |
            | 33      | 301           | None             | Commercial        | 50000       | 79.99  | Adjustable | 30          | Denial   | N/A          |
            | 34      | 301           | 620              | Single Family     | 500000      | 100.01 | Adjustable | 40          | Denial   | N/A          |
            | 35      | 619           | 620              | Multi-Family Unit | 50000       | 99.99  | Fixed      | 10          | Denial   | N/A          |
            | 36      | 660           | 300              | Single Family     | 1000000     | 80.01  | Adjustable | 30          | Denial   | N/A          |
            | 37      | 659           | None             | Multi-Family Unit | 500000      | 99.99  | Adjustable | 30          | Denial   | N/A          |
            | 38      | 849           | 850              | Condominium       | 500000      | 100.0  | Fixed      | 30          | Denial   | N/A          |
            | 39      | 300           | 300              | Commercial        | 417999      | 80.01  | Fixed      | 40          | Denial   | N/A          |
            | 40      | 621           | 619              | Multi-Family Unit | 418001      | 100.0  | Fixed      | 10          | Denial   | N/A          |
            | 41      | 619           | 619              | Townhouse         | 418000      | 100.01 | Adjustable | 40          | Denial   | N/A          |
            | 42      | 300           | None             | Condominium       | 50000       | 79.99  | Fixed      | 15          | Approved | FHA          |
            | 43      | 659           | 300              | Townhouse         | 1000000     | 80.01  | Fixed      | 15          | Denial   | N/A          |
            | 44      | 849           | 520              | Multi-Family Unit | 1000000     | 79.99  | Adjustable | 15          | Approved | Conventional |
            | 45      | 580           | None             | Multi-Family Unit | 418001      | 79.99  | Fixed      | 40          | Denial   | N/A          |
            | 46      | 621           | 620              | Condominium       | 1000000     | 79.99  | Fixed      | 15          | Approved | Conventional |
            | 47      | 661           | 619              | Commercial        | 50000       | 79.99  | Fixed      | 15          | Denial   | N/A          |
            | 48      | 850           | 850              | Commercial        | 417999      | 80.0   | Fixed      | 10          | Denial   | N/A          |
            | 49      | 620           | 850              | Commercial        | 1000000     | 99.99  | Adjustable | 40          | Denial   | N/A          |
            | 50      | 660           | None             | Townhouse         | 418000      | 99.99  | Adjustable | 40          | Denial   | N/A          |
            | 51      | 850           | None             | Single Family     | 418000      | 100.0  | Fixed      | 15          | Approved | FHA          |
            | 52      | 661           | 300              | Condominium       | 500000      | 80.01  | Fixed      | 30          | Denial   | N/A          |
            | 53      | 580           | 300              | Single Family     | 50000       | 99.99  | Adjustable | 10          | Denial   | N/A          |
            | 54      | 659           | 620              | Commercial        | 418000      | 100.0  | Fixed      | 15          | Denial   | N/A          |
            | 55      | 661           | 519              | Multi-Family Unit | 417999      | 100.0  | Fixed      | 30          | Denial   | N/A          |
            | 56      | 661           | None             | Single Family     | 418001      | 100.01 | Adjustable | 10          | Denial   | N/A          |
            | 57      | 621           | None             | Townhouse         | 418000      | 100.01 | Fixed      | 40          | Denial   | N/A          |
            | 58      | 301           | 619              | Condominium       | 418001      | 80.0   | Fixed      | 30          | Denial   | N/A          |
            | 59      | 580           | 620              | Commercial        | 418000      | 80.01  | Fixed      | 10          | Denial   | N/A          |
            | 60      | 660           | 520              | Commercial        | 417999      | 80.0   | Adjustable | 10          | Denial   | N/A          |
            | 61      | 661           | 620              | Condominium       | 1000000     | 100.01 | Adjustable | 40          | Denial   | N/A          |
            | 62      | 620           | 520              | Single Family     | 417999      | 79.99  | Fixed      | 10          | Approved | Conventional |
            | 63      | 621           | 520              | Townhouse         | 50000       | 80.0   | Fixed      | 10          | Approved | Conventional |
            | 64      | 301           | 519              | Townhouse         | 1000000     | 100.0  | Adjustable | 15          | Denial   | N/A          |
            | 65      | 620           | 620              | Condominium       | 418000      | 80.0   | Adjustable | 30          | Approved | Conventional |
            | 66      | 659           | 619              | Multi-Family Unit | 417999      | 80.01  | Fixed      | 30          | Denial   | N/A          |
            | 67      | 660           | 620              | Condominium       | 500000      | 79.99  | Fixed      | 30          | Approved | Jumbo        |
            | 68      | 580           | 520              | Condominium       | 50000       | 80.0   | Adjustable | 10          | Denial   | N/A          |
            | 69      | 619           | 519              | Townhouse         | 500000      | 80.0   | Fixed      | 15          | Denial   | N/A          |
            | 70      | 660           | 850              | Condominium       | 418001      | 80.01  | Adjustable | 40          | Denial   | N/A          |
            | 71      | 300           | 850              | Townhouse         | 1000000     | 79.99  | Adjustable | 30          | Denial   | N/A          |
            | 72      | 301           | 850              | Multi-Family Unit | 50000       | 80.0   | Adjustable | 10          | Denial   | N/A          |
            | 73      | 849           | 300              | Condominium       | 418000      | 100.01 | Fixed      | 15          | Denial   | N/A          |

    Scenario Outline: FHA Loan Rejection due to Invalid Loan Period
        Given a borrower with the following attributes:
            | Attribute        | Value       |
            | Borrower FICO    | 650         |
            | Co-Borrower FICO | None        |
            | Property Type    | Condominium |
            | Loan Amount      | 200000      |
            | LTV              | 95          |
            | Loan Type        | Fixed       |
            | Loan Period      | 40          |
        When the loan application is submitted
        Then the application result is "Denial" with "N/A"

    Scenario Outline: FHA Loan Approval at Minimum and Maximum Loan Amounts <test_id>
        Given a borrower with the following attributes:
            | Attribute        | Value           |
            | Borrower FICO    | <Borrower FICO> |
            | Co-Borrower FICO | None            |
            | Property Type    | Townhouse       |
            | Loan Amount      | <Loan Amount>   |
            | LTV              | 96              |
            | Loan Type        | Fixed           |
            | Loan Period      | 30              |
        When the loan application is submitted
        Then the application result is "<Approval>" with "<Loan Program>"

        Examples:
            | test_id | Borrower FICO | Loan Amount | Approval | Loan Program |
            | 01      | 580           | 50000       | Approved | FHA          |
            | 02      | 580           | 418000      | Approved | FHA          |
            | 03      | 580           | 418001      | Denial   | N/A          |

    Scenario Outline: Conventional Loan Approval with Co-Borrower FICO Boundary <test_id>
        Given a borrower with the following attributes:
            | Attribute        | Value              |
            | Borrower FICO    | 620                |
            | Co-Borrower FICO | <Co-Borrower FICO> |
            | Property Type    | Single Family      |
            | Loan Amount      | 400000             |
            | LTV              | 80                 |
            | Loan Type        | Fixed              |
            | Loan Period      | 30                 |
        When the loan application is submitted
        Then the application result is "<Approval>" with "<Loan Program>"

        Examples:
            | test_id | Co-Borrower FICO | Approval | Loan Program |
            | 01      | 520              | Approved | Conventional |
            | 02      | 519              | Approved | FHA          |

    Scenario Outline: FHA Loan Rejection with Invalid Loan Type
        Given a borrower with the following attributes:
            | Attribute        | Value       |
            | Borrower FICO    | 700         |
            | Co-Borrower FICO | None        |
            | Property Type    | Condominium |
            | Loan Amount      | 300000      |
            | LTV              | 95          |
            | Loan Type        | Adjustable  |
            | Loan Period      | 15          |
        When the loan application is submitted
        Then the application result is "Denial" with "N/A"

    Scenario Outline: FICO Boundary UI Error <test_id>
        Given a borrower with the following attributes:
            | Attribute        | Value              |
            | Borrower FICO    | <Borrower FICO>    |
            | Co-Borrower FICO | <Co-Borrower FICO> |
            | Property Type    | <Property Type>    |
            | Loan Amount      | <Loan Amount>      |
            | LTV              | <LTV>              |
            | Loan Type        | <Loan Type>        |
            | Loan Period      | <Loan Period>      |
        When the loan application is submitted
        Then an alert is displayed with message "<Error Message>"

        Examples:
            | test_id | Borrower FICO | Co-Borrower FICO | Property Type     | Loan Amount | LTV    | Loan Type  | Loan Period | Approval | Loan Program | Error Message                                         |
            | 01      | 851           | 300              | Commercial        | 49999       | 100.01 | Fixed      | 10          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 02      | 300           | 299              | Multi-Family Unit | 418000      | 100.0  | Fixed      | 30          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 03      | 849           | 299              | Single Family     | 50000       | 99.99  | Adjustable | 10          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 04      | 299           | 299              | Multi-Family Unit | 1000000     | 100.01 | Adjustable | 40          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 05      | 619           | 299              | Condominium       | 418001      | 79.99  | Fixed      | 15          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 06      | 851           | 299              | Commercial        | 1000000     | 80.0   | Adjustable | 15          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 07      | 299           | 850              | Single Family     | 418000      | 79.99  | Fixed      | 10          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 08      | 299           | 519              | Multi-Family Unit | 50000       | 80.0   | Fixed      | 30          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 09      | 299           | None             | Condominium       | 49999       | 80.01  | Fixed      | 15          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 10      | 299           | 520              | Commercial        | 500000      | 99.99  | Adjustable | 15          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 11      | 580           | 299              | Townhouse         | 500000      | 100.01 | Fixed      | 10          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 12      | 851           | 519              | Single Family     | 417999      | 79.99  | Fixed      | 40          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 13      | 850           | 299              | Townhouse         | 50000       | 80.0   | Adjustable | 40          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 14      | 851           | None             | Multi-Family Unit | 50000       | 100.01 | Adjustable | 15          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 15      | 299           | 300              | Townhouse         | 418001      | 100.0  | Fixed      | 30          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 16      | 299           | 620              | Commercial        | 417999      | 80.01  | Adjustable | 30          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 17      | 851           | 520              | Condominium       | 418000      | 100.0  | Fixed      | 15          | Approved | FHA          | Borrower's FICO score must be between 300 and 850.    |
            | 18      | 659           | 299              | Single Family     | 49999       | 99.99  | Adjustable | 15          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 19      | 620           | 299              | Single Family     | 418001      | 100.01 | Adjustable | 10          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 20      | 299           | 619              | Multi-Family Unit | 418000      | 80.0   | Adjustable | 30          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 21      | 661           | 299              | Commercial        | 1000000     | 99.99  | Adjustable | 40          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 22      | 851           | 620              | Townhouse         | 418001      | 80.0   | Adjustable | 10          | Denial   | N/A          | Borrower's FICO score must be between 300 and 850.    |
            | 23      | 660           | 299              | Townhouse         | 49999       | 79.99  | Fixed      | 10          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 24      | 301           | 299              | Multi-Family Unit | 417999      | 80.01  | Fixed      | 10          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |
            | 25      | 661           | 299              | Commercial        | 1000000     | 99.99  | Adjustable | 40          | Denial   | N/A          | Co-borrower's FICO score must be between 300 and 850. |

    Scenario Outline: UI Boundary Validation Errors <test_id>
        Given a borrower with the following attributes:
            | Attribute        | Value              |
            | Borrower FICO    | <Borrower FICO>    |
            | Co-Borrower FICO | <Co-Borrower FICO> |
            | Property Type    | <Property Type>    |
            | Loan Amount      | <Loan Amount>      |
            | LTV              | <LTV>              |
            | Loan Type        | <Loan Type>        |
            | Loan Period      | <Loan Period>      |
        When the loan application is submitted
        Then an alert is displayed with message "<Error Message>"

        Examples:
            | test_id | Borrower FICO | Co-Borrower FICO | Property Type     | Loan Amount | LTV    | Loan Type  | Loan Period | Approval | Loan Program | Error Message                                  |
            | 02      | 661           | 850              | Single Family     | 49999       | 99.99  | Adjustable | 40          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 01      | 850           | 620              | Townhouse         | 49999       | 100.0  | Adjustable | 15          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 03      | 620           | 619              | Multi-Family Unit | 49999       | 79.99  | Adjustable | 30          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 04      | 659           | 519              | Multi-Family Unit | 49999       | 80.0   | Adjustable | 10          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 05      | 621           | 850              | Multi-Family Unit | 49999       | 80.01  | Fixed      | 15          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 06      | 300           | 620              | Townhouse         | 49999       | 80.0   | Fixed      | 30          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 07      | 580           | 850              | Multi-Family Unit | 49999       | 100.0  | Adjustable | 15          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 08      | 300           | 520              | Single Family     | 49999       | 99.99  | Adjustable | 40          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 09      | 849           | None             | Condominium       | 49999       | 79.99  | Adjustable | 40          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 10      | 619           | 850              | Condominium       | 49999       | 100.01 | Fixed      | 15          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 11      | 301           | 520              | Townhouse         | 49999       | 80.01  | Adjustable | 40          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
            | 12      | 580           | None             | Townhouse         | 49999       | 96     | Fixed      | 30          | Denial   | N/A          | Loan amount must be between 50000 and 1000000. |
