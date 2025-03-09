Feature: Loan Application Approval

    Background:
        Given the Greenacre Loan Application system is operational

    Scenario Outline: Submit application qualifying for Jumbo loan program
        When I complete the loan application with the following details:
            | Field         | Value         |
            | Borrower FICO | 720           |
            | Co-Borrower   | None          |
            | Property Type | Single Family |
            | LTV           | 75            |
            | Loan Amount   | 500000        |
            | Loan Type     | Fixed         |
            | Loan Period   | 30            |
        And I submit the application
        Then I should see a "Approval" status
        And the approved program should be "Jumbo"
        And an interest rate should be displayed

    Scenario Outline: Test loan approval at program boundaries
        When I complete the loan application with the following details:
            | Field         | Value           |
            | Borrower FICO | <borrower_fico> |
            | Co-Borrower   | <co_borrower>   |
            | Property Type | <property>      |
            | LTV           | <ltv>           |
            | Loan Amount   | <amount>        |
            | Loan Type     | <type>          |
            | Loan Period   | <period>        |
        And I submit the application
        Then I should see a "<status>" status
        And the approved program should be "<program>"

        Examples:
            | borrower_fico | co_borrower | property      | ltv  | amount | type  | period | status   | program      |
            | 660           | None        | Single Family | 80   | 418000 | Fixed | 30     | Approval | Jumbo        |
            | 659           | None        | Single Family | 80   | 418000 | Fixed | 30     | Approval | Conventional |
            | 620           | None        | Single Family | 80   | 417999 | Fixed | 30     | Approval | Conventional |
            | 619           | None        | Single Family | 80   | 400000 | Fixed | 30     | Approval | FHA          |
            | 580           | None        | Single Family | 81   | 200000 | Fixed | 30     | Approval | FHA          |
            | 660           | None        | Single Family | 75   | 500000 | Fixed | 30     | Approval | Jumbo        |
            | 659           | None        | Single Family | 75   | 500000 | Fixed | 30     | Approval | Conventional |
            | 620           | None        | Single Family | 75   | 300000 | Fixed | 30     | Approval | Conventional |
            | 619           | None        | Single Family | 75   | 300000 | Fixed | 30     | Approval | FHA          |
            | 700           | None        | Single Family | 75   | 418000 | Fixed | 30     | Approval | Jumbo        |
            | 700           | None        | Single Family | 75   | 417999 | Fixed | 30     | Approval | Conventional |
            | 700           | None        | Single Family | 80   | 300000 | Fixed | 30     | Approval | Conventional |
            | 700           | None        | Single Family | 80.5 | 300000 | Fixed | 30     | Approval | FHA          |
            | 580           | 620         | Single Family | 75   | 300000 | Fixed | 30     | Approval | FHA          |
            | 620           | 580         | Single Family | 75   | 300000 | Fixed | 30     | Approval | Conventional |
            | 620           | 780         | Single Family | 75   | 300000 | Fixed | 30     | Approval | Conventional |
            | 700           | 700         | Single Family | 75   | 300000 | Fixed | 30     | Approval | Conventional |
            | 780           | 620         | Single Family | 75   | 300000 | Fixed | 30     | Approval | Conventional |
            | 300           | 850         | Single Family | 100  | 50000  | Fixed | 15     | Approval | FHA          |

    Scenario Outline: Application qualifying for multiple loan programs follows precedence
        When I complete the loan application with the following details:
            | Field         | Value         |
            | Borrower FICO | 700           |
            | Co-Borrower   | None          |
            | Property Type | Single Family |
            | LTV           | 75            |
            | Loan Amount   | 418000        |
            | Loan Type     | Fixed         |
            | Loan Period   | 30            |
        And I submit the application
        Then I should see a "Approval" status
        And the approved program should be "Jumbo"

        When I modify the loan application to:
            | Field       | Value  |
            | Loan Amount | 417000 |
        And I submit the application
        Then I should see a "Approval" status
        And the approved program should be "Conventional"

    Scenario Outline: Low FICO borrower with strong co-borrower gets approval
        When I complete the loan application with the following details:
            | Field         | Value         |
            | Borrower FICO | 620           |
            | Co-Borrower   | 720           |
            | Property Type | Single Family |
            | LTV           | 75            |
            | Loan Amount   | 300000        |
            | Loan Type     | Fixed         |
            | Loan Period   | 30            |
        And I submit the application
        Then I should see a "Approval" status
        And the approved program should be "Conventional"

        When I modify the loan application to:
            | Field       | Value |
            | Co-Borrower | None  |
        And I submit the application
        Then I should see a "Approval" status
        And the approved program should be "Conventional"
