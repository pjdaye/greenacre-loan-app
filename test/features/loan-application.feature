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
            | 12      | 850           | 620              | Townhouse         | 49999       | 100.0  | Adjustable | 15          | Denial   | N/A          |
            | 13      | 620           | 519              | Single Family     | 50000       | 80.01  | Fixed      | 15          | Approved | FHA          |
            | 14      | 661           | 520              | Townhouse         | 418000      | 80.0   | Fixed      | 10          | Approved | Conventional |
            | 15      | 619           | None             | Single Family     | 417999      | 100.0  | Adjustable | 40          | Denial   | N/A          |
            | 16      | 659           | 520              | Condominium       | 50000       | 79.99  | Adjustable | 40          | Approved | Conventional |
            | 17      | 621           | 300              | Single Family     | 500000      | 80.0   | Adjustable | 30          | Denial   | N/A          |
            | 18      | 849           | 619              | Commercial        | 418000      | 80.01  | Fixed      | 40          | Denial   | N/A          |
            | 19      | 849           | 519              | Townhouse         | 417999      | 100.01 | Adjustable | 30          | Denial   | N/A          |
            | 20      | 300           | 519              | Townhouse         | 418001      | 99.99  | Adjustable | 10          | Denial   | N/A          |
            | 21      | 301           | 300              | Multi-Family Unit | 418000      | 99.99  | Adjustable | 15          | Denial   | N/A          |
            | 22      | 850           | 520              | Condominium       | 500000      | 100.01 | Fixed      | 10          | Denial   | N/A          |
            | 23      | 661           | 850              | Single Family     | 49999       | 99.99  | Adjustable | 40          | Denial   | N/A          |
            | 24      | 660           | 619              | Multi-Family Unit | 50000       | 100.0  | Fixed      | 10          | Denial   | N/A          |
            | 25      | 620           | 619              | Multi-Family Unit | 49999       | 79.99  | Adjustable | 30          | Denial   | N/A          |
            | 26      | 850           | 300              | Multi-Family Unit | 418001      | 80.01  | Adjustable | 40          | Denial   | N/A          |
            | 27      | 300           | 619              | Single Family     | 500000      | 100.01 | Fixed      | 15          | Denial   | N/A          |
            | 28      | 620           | None             | Townhouse         | 1000000     | 80.0   | Fixed      | 10          | Approved | Conventional |
            | 29      | 580           | 519              | Commercial        | 1000000     | 100.0  | Fixed      | 30          | Denial   | N/A          |
            | 30      | 620           | 300              | Condominium       | 500000      | 100.0  | Adjustable | 40          | Denial   | N/A          |
            | 31      | 621           | 519              | Commercial        | 417999      | 99.99  | Fixed      | 40          | Denial   | N/A          |
            | 32      | 619           | 300              | Townhouse         | 1000000     | 79.99  | Fixed      | 10          | Denial   | N/A          |
            | 33      | 849           | 620              | Multi-Family Unit | 418001      | 80.0   | Fixed      | 40          | Approved | Jumbo        |
            | 34      | 660           | 519              | Condominium       | 418000      | 100.01 | Adjustable | 15          | Denial   | N/A          |
            | 35      | 659           | 850              | Single Family     | 418001      | 100.01 | Fixed      | 15          | Denial   | N/A          |
            | 36      | 301           | None             | Commercial        | 50000       | 79.99  | Adjustable | 30          | Denial   | N/A          |
            | 37      | 659           | 519              | Multi-Family Unit | 49999       | 80.0   | Adjustable | 10          | Denial   | N/A          |
            | 38      | 301           | 620              | Single Family     | 500000      | 100.01 | Adjustable | 40          | Denial   | N/A          |
            | 39      | 619           | 620              | Multi-Family Unit | 50000       | 99.99  | Fixed      | 10          | Denial   | N/A          |
            | 40      | 660           | 300              | Single Family     | 1000000     | 80.01  | Adjustable | 30          | Denial   | N/A          |
            | 41      | 659           | None             | Multi-Family Unit | 500000      | 99.99  | Adjustable | 30          | Denial   | N/A          |
            | 42      | 849           | 850              | Condominium       | 500000      | 100.0  | Fixed      | 30          | Denial   | N/A          |
            | 43      | 300           | 300              | Commercial        | 417999      | 80.01  | Fixed      | 40          | Denial   | N/A          |
            | 44      | 621           | 619              | Multi-Family Unit | 418001      | 100.0  | Fixed      | 10          | Denial   | N/A          |
            | 45      | 619           | 619              | Townhouse         | 418000      | 100.01 | Adjustable | 40          | Denial   | N/A          |
            | 46      | 300           | None             | Condominium       | 50000       | 79.99  | Fixed      | 15          | Approved | FHA          |
            | 47      | 659           | 300              | Townhouse         | 1000000     | 80.01  | Fixed      | 15          | Denial   | N/A          |
            | 48      | 849           | 520              | Multi-Family Unit | 1000000     | 79.99  | Adjustable | 15          | Approved | Conventional |
            | 49      | 580           | None             | Multi-Family Unit | 418001      | 79.99  | Fixed      | 40          | Denial   | N/A          |
            | 50      | 621           | 620              | Condominium       | 1000000     | 79.99  | Fixed      | 15          | Approved | Conventional |
            | 51      | 661           | 619              | Commercial        | 50000       | 79.99  | Fixed      | 15          | Denial   | N/A          |
            | 52      | 850           | 850              | Commercial        | 417999      | 80.0   | Fixed      | 10          | Denial   | N/A          |
            | 53      | 620           | 850              | Commercial        | 1000000     | 99.99  | Adjustable | 40          | Denial   | N/A          |
            | 54      | 660           | None             | Townhouse         | 418000      | 99.99  | Adjustable | 40          | Denial   | N/A          |
            | 55      | 850           | None             | Single Family     | 418000      | 100.0  | Fixed      | 15          | Approved | FHA          |
            | 56      | 661           | 300              | Condominium       | 500000      | 80.01  | Fixed      | 30          | Denial   | N/A          |
            | 57      | 580           | 300              | Single Family     | 50000       | 99.99  | Adjustable | 10          | Denial   | N/A          |
            | 58      | 659           | 620              | Commercial        | 418000      | 100.0  | Fixed      | 15          | Denial   | N/A          |
            | 59      | 661           | 519              | Multi-Family Unit | 417999      | 100.0  | Fixed      | 30          | Denial   | N/A          |
            | 60      | 661           | None             | Single Family     | 418001      | 100.01 | Adjustable | 10          | Denial   | N/A          |
            | 61      | 621           | None             | Townhouse         | 418000      | 100.01 | Fixed      | 40          | Denial   | N/A          |
            | 62      | 621           | 850              | Multi-Family Unit | 49999       | 80.01  | Fixed      | 15          | Denial   | N/A          |
            | 63      | 301           | 619              | Condominium       | 418001      | 80.0   | Fixed      | 30          | Denial   | N/A          |
            | 64      | 580           | 620              | Commercial        | 418000      | 80.01  | Fixed      | 10          | Denial   | N/A          |
            | 65      | 660           | 520              | Commercial        | 417999      | 80.0   | Adjustable | 10          | Denial   | N/A          |
            | 66      | 300           | 620              | Townhouse         | 49999       | 80.0   | Fixed      | 30          | Denial   | N/A          |
            | 67      | 580           | 850              | Multi-Family Unit | 49999       | 100.0  | Adjustable | 15          | Denial   | N/A          |
            | 68      | 661           | 620              | Condominium       | 1000000     | 100.01 | Adjustable | 40          | Denial   | N/A          |
            | 69      | 620           | 520              | Single Family     | 417999      | 79.99  | Fixed      | 10          | Approved | Conventional |
            | 70      | 621           | 520              | Townhouse         | 50000       | 80.0   | Fixed      | 10          | Approved | Conventional |
            | 71      | 301           | 519              | Townhouse         | 1000000     | 100.0  | Adjustable | 15          | Denial   | N/A          |
            | 72      | 620           | 620              | Condominium       | 418000      | 80.0   | Adjustable | 30          | Approved | Conventional |
            | 73      | 300           | 520              | Single Family     | 49999       | 99.99  | Adjustable | 40          | Denial   | N/A          |
            | 74      | 659           | 619              | Multi-Family Unit | 417999      | 80.01  | Fixed      | 30          | Denial   | N/A          |
            | 75      | 660           | 620              | Condominium       | 500000      | 79.99  | Fixed      | 30          | Approved | Jumbo        |
            | 76      | 580           | 520              | Condominium       | 50000       | 80.0   | Adjustable | 10          | Denial   | N/A          |
            | 77      | 849           | None             | Condominium       | 49999       | 79.99  | Adjustable | 40          | Denial   | N/A          |
            | 78      | 619           | 519              | Townhouse         | 500000      | 80.0   | Fixed      | 15          | Denial   | N/A          |
            | 79      | 619           | 850              | Condominium       | 49999       | 100.01 | Fixed      | 15          | Denial   | N/A          |
            | 80      | 301           | 520              | Townhouse         | 49999       | 80.01  | Adjustable | 40          | Denial   | N/A          |
            | 81      | 660           | 850              | Condominium       | 418001      | 80.01  | Adjustable | 40          | Denial   | N/A          |
            | 82      | 300           | 850              | Townhouse         | 1000000     | 79.99  | Adjustable | 30          | Denial   | N/A          |
            | 83      | 301           | 850              | Multi-Family Unit | 50000       | 80.0   | Adjustable | 10          | Denial   | N/A          |
            | 84      | 849           | 300              | Condominium       | 418000      | 100.01 | Fixed      | 15          | Denial   | N/A          |

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
            | 04      | 580           | 49999       | Denial   | N/A          |

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
        Then an alert is displayed with message "<test_id>"

        Examples:
            | test_id | Borrower FICO | Co-Borrower FICO | Property Type     | Loan Amount | LTV    | Loan Type  | Loan Period | Approval | Loan Program |
            | 01      | 851           | 300              | Commercial        | 49999       | 100.01 | Fixed      | 10          | Denial   | N/A          |
            | 02      | 300           | 299              | Multi-Family Unit | 418000      | 100.0  | Fixed      | 30          | Denial   | N/A          |
            | 03      | 849           | 299              | Single Family     | 50000       | 99.99  | Adjustable | 10          | Denial   | N/A          |
            | 04      | 299           | 299              | Multi-Family Unit | 1000000     | 100.01 | Adjustable | 40          | Denial   | N/A          |
            | 05      | 619           | 299              | Condominium       | 418001      | 79.99  | Fixed      | 15          | Denial   | N/A          |
            | 06      | 851           | 299              | Commercial        | 1000000     | 80.0   | Adjustable | 15          | Denial   | N/A          |
            | 07      | 299           | 850              | Single Family     | 418000      | 79.99  | Fixed      | 10          | Denial   | N/A          |
            | 08      | 299           | 519              | Multi-Family Unit | 50000       | 80.0   | Fixed      | 30          | Denial   | N/A          |
            | 09      | 299           | None             | Condominium       | 49999       | 80.01  | Fixed      | 15          | Denial   | N/A          |
            | 10      | 299           | 520              | Commercial        | 500000      | 99.99  | Adjustable | 15          | Denial   | N/A          |
            | 11      | 580           | 299              | Townhouse         | 500000      | 100.01 | Fixed      | 10          | Denial   | N/A          |
            | 12      | 851           | 519              | Single Family     | 417999      | 79.99  | Fixed      | 40          | Denial   | N/A          |
            | 13      | 850           | 299              | Townhouse         | 50000       | 80.0   | Adjustable | 40          | Denial   | N/A          |
            | 14      | 851           | None             | Multi-Family Unit | 50000       | 100.01 | Adjustable | 15          | Denial   | N/A          |
            | 15      | 299           | 300              | Townhouse         | 418001      | 100.0  | Fixed      | 30          | Denial   | N/A          |
            | 16      | 299           | 620              | Commercial        | 417999      | 80.01  | Adjustable | 30          | Denial   | N/A          |
            | 17      | 851           | 520              | Condominium       | 418000      | 100.0  | Fixed      | 15          | Approved | FHA          |
            | 18      | 659           | 299              | Single Family     | 49999       | 99.99  | Adjustable | 15          | Denial   | N/A          |
            | 19      | 620           | 299              | Single Family     | 418001      | 100.01 | Adjustable | 10          | Denial   | N/A          |
            | 20      | 299           | 619              | Multi-Family Unit | 418000      | 80.0   | Adjustable | 30          | Denial   | N/A          |
            | 21      | 661           | 299              | Commercial        | 1000000     | 99.99  | Adjustable | 40          | Denial   | N/A          |
            | 22      | 851           | 620              | Townhouse         | 418001      | 80.0   | Adjustable | 10          | Denial   | N/A          |
            | 23      | 660           | 299              | Townhouse         | 49999       | 79.99  | Fixed      | 10          | Denial   | N/A          |
            | 24      | 301           | 299              | Multi-Family Unit | 417999      | 80.01  | Fixed      | 10          | Denial   | N/A          |
            | 25      | 661           | 299              | Commercial        | 1000000     | 99.99  | Adjustable | 40          | Denial   | N/A          |
