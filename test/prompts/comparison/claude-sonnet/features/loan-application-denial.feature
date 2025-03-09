Feature: Loan Application Denial

    Background:
        Given the Greenacre Loan Application system is operational

    Scenario Outline: Test loan approval at program boundaries
        When I complete the loan application with the following details:
            | Field          | Value           |
            | Borrower FICO  | <borrower_fico> |
            | Co-Borrower    | <co_borrower>   |
            | Property Type  | <property>      |
            | LTV            | <ltv>           |
            | Loan Amount    | <amount>        |
            | Loan Type      | <type>          |
            | Loan Period    | <period>        |
        And I submit the application
        Then I should see a "<status>" status

        Examples:
            | borrower_fico | co_borrower | property      | ltv | amount  | type       | period | status |
            | 580           | None        | Single Family | 101 | 200000  | Fixed      | 30     | Denial |
            | 850           | None        | Commercial    | 65  | 1000000 | Adjustable | 40     | Denial |

# These tests are designed to test UI validations, which are not implemented
# Feature: Loan Application Validation
# Background:
#   Given the Greenacre Loan Application system is operational
#   And I am logged in as a borrower
# Scenario Outline: System validation prevents invalid applications
#   When I attempt to enter "<field>" with value "<value>"
#   Then I should see a validation error for that field
#   And I should not be able to submit the application
#   Examples:
#     | field         | value         |
#     | Borrower FICO | 250           |
#     | Borrower FICO | 900           |
#     | LTV           | 120%          |
#     | Loan Amount   | $30,000       |
#     | Loan Amount   | $1,200,000    |
#     | Loan Period   | 20            |
#     | Property Type | Mobile Home   |
