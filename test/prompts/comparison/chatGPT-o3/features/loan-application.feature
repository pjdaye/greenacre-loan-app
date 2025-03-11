Feature: Loan Application Submission

    Background:
        Given a borrower is on the loan application page

    Scenario: Loan application qualifies for more than one program
        When a borrower with a Borrower FICO of "700" and a Co-Borrower FICO of "650"
        And the property type is "Townhouse"
        And the Loan-to-Value is "75"% on a loan amount of "500000"
        And the Loan Amount is "500000"
        And the Loan Type is "Adjustable"
        And the Loan Period is "40" years
        And the borrower submits the loan application form
        Then the system should return "Approval", "Jumbo", and the appropriate rate

    Scenario Outline: Borrower submits a valid application for Conventional loan
        When a borrower with a Borrower FICO of "<borrower_fico>" and a Co-Borrower FICO of "<co_borrower_fico>"
        And the property type is "<property_type>"
        And the Loan-to-Value is "<ltv>"% on a loan amount of "<loan_amount>"
        And the Loan Amount is "<loan_amount>"
        And the Loan Type is "<loan_type>"
        And the Loan Period is "<loan_period>" years
        And the borrower submits the loan application form
        Then the system should return "<approved>", "<loan_program>", and the appropriate rate

        Examples:
            | borrower_fico | co_borrower_fico | property_type     | ltv | loan_amount | loan_type | loan_period | approved | loan_program |
            | 700           | 600              | Single Family     | 75  | 200000      | Fixed     | 30          | Approval | Conventional |
            | 850           | None             | Townhouse         | 80  | 50000       | Fixed     | 15          | Approval | Conventional |
            | 850           | 850              | Single Family     | 80  | 50000       | Fixed     | 15          | Approval | Conventional |
            | 850           | None             | Townhouse         | 80  | 50000       | Fixed     | 10          | Approval | Conventional |
            | 850           | 850              | Townhouse         | 80  | 50000       | Fixed     | 10          | Approval | Conventional |
            | 850           | None             | Single Family     | 80  | 50000       | Fixed     | 10          | Approval | Conventional |
            | 850           | None             | Condominium       | 80  | 50000       | Fixed     | 10          | Approval | Conventional |
            | 850           | 850              | Condominium       | 80  | 50000       | Fixed     | 10          | Approval | Conventional |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Fixed     | 10          | Approval | Conventional |
            | 850           | 850              | Single Family     | 80  | 50000       | Fixed     | 10          | Approval | Conventional |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Fixed     | 10          | Approval | Conventional |

    Scenario: Borrower submits a valid FHA loan application
        When a borrower with a Borrower FICO of "500" and a Co-Borrower FICO of "None"
        And the property type is "Condominium"
        And the Loan-to-Value is "95"% on a loan amount of "300000"
        And the Loan Amount is "300000"
        And the Loan Type is "Fixed"
        And the Loan Period is "30" years
        And the borrower submits the loan application form
        Then the system should return "Approval", "FHA", and the appropriate rate

    Scenario: FHA loan application denied due to invalid loan type
        When a borrower with a Borrower FICO of "550" and a Co-Borrower FICO of "550"
        And the property type is "Single Family"
        And the Loan-to-Value is "90"% on a loan amount of "200000"
        And the Loan Amount is "200000"
        And the Loan Type is "Adjustable"
        And the Loan Period is "15" years
        And the borrower submits the loan application form
        Then the system should return "Denial", "NA", and the appropriate rate

    Scenario Outline: Loan application with boundary values for FICO and Loan Amount
        When a borrower with a Borrower FICO of "<borrower_fico>" and a Co-Borrower FICO of "<co_borrower_fico>"
        And the property type is "<property_type>"
        And the Loan-to-Value is "<ltv>"% on a loan amount of "<loan_amount>"
        And the Loan Amount is "<loan_amount>"
        And the Loan Type is "<loan_type>"
        And the Loan Period is "<loan_period>" years
        And the borrower submits the loan application form
        Then the system should return "<approved>", "<loan_program>", and the appropriate rate

        Examples:
            | borrower_fico | co_borrower_fico | property_type | ltv | loan_amount | loan_type  | loan_period | approved | loan_program |
            | 300           | 300              | Condominium   | 80  | 50000       | Fixed      | 15          | Approval | FHA          |
            | 300           | None             | Single Family | 80  | 50000       | Fixed      | 15          | Approval | FHA          |
            | 300           | None             | Condominium   | 80  | 418000      | Fixed      | 40          | Denial   | NA           |
            | 300           | None             | Townhouse     | 80  | 500000      | Adjustable | 30          | Denial   | NA           |
            | 300           | 300              | Condominium   | 80  | 50000       | Fixed      | 15          | Approval | FHA          |
            | 300           | 300              | Townhouse     | 80  | 418000      | Fixed      | 40          | Denial   | NA           |
            | 300           | 850              | Single Family | 80  | 500000      | Adjustable | 30          | Denial   | NA           |
            | 300           | 850              | Townhouse     | 80  | 50000       | Fixed      | 15          | Approval | FHA          |
            | 600           | 300              | Single Family | 80  | 50000       | Fixed      | 15          | Approval | FHA          |
            | 600           | 300              | Condominium   | 80  | 418000      | Fixed      | 40          | Denial   | NA           |
            | 600           | 300              | Townhouse     | 80  | 500000      | Adjustable | 30          | Denial   | NA           |
            | 600           | 850              | Condominium   | 80  | 50000       | Fixed      | 15          | Approval | FHA          |
            | 600           | 850              | Townhouse     | 80  | 418000      | Fixed      | 40          | Denial   | NA           |
            | 850           | None             | Single Family | 80  | 500000      | Adjustable | 30          | Approval | Jumbo        |
            | 850           | 300              | Single Family | 80  | 418000      | Fixed      | 40          | Denial   | NA           |
            | 850           | 300              | Condominium   | 80  | 500000      | Adjustable | 30          | Denial   | NA           |
            | 850           | 850              | Condominium   | 80  | 418000      | Fixed      | 40          | Approval | Jumbo        |
            | 850           | 850              | Townhouse     | 80  | 500000      | Adjustable | 30          | Approval | Jumbo        |

    Scenario Outline: Loan application denied
        When a borrower with a Borrower FICO of "<borrower_fico>" and a Co-Borrower FICO of "<co_borrower_fico>"
        And the property type is "<property_type>"
        And the Loan-to-Value is "<ltv>"% on a loan amount of "<loan_amount>"
        And the Loan Amount is "<loan_amount>"
        And the Loan Type is "<loan_type>"
        And the Loan Period is "<loan_period>" years
        And the borrower submits the loan application form
        Then the system should return "<approved>", "<loan_program>", and the appropriate rate

        Examples:
            | borrower_fico | co_borrower_fico | property_type     | ltv | loan_amount | loan_type  | loan_period | approved | loan_program |
            | 600           | None             | Single Family     | 80  | 418000      | Fixed      | 40          | Denial   | NA           |
            | 600           | None             | Condominium       | 80  | 500000      | Adjustable | 30          | Denial   | NA           |
            | 550           | 550              | Single Family     | 90  | 200000      | Adjustable | 15          | Denial   | NA           |
            | 300           | None             | Single Family     | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | None             | Condominium       | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | None             | Townhouse         | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | 300              | Single Family     | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | 300              | Condominium       | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | 300              | Townhouse         | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | 850              | Single Family     | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | 850              | Condominium       | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | 850              | Townhouse         | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 300           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | None             | Single Family     | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | None             | Condominium       | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | None             | Townhouse         | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | 300              | Single Family     | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | 300              | Condominium       | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | 300              | Townhouse         | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | 850              | Single Family     | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | 850              | Condominium       | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | 850              | Townhouse         | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 600           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 850           | 300              | Single Family     | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 850           | 300              | Condominium       | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 850           | 300              | Townhouse         | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | Denial   | NA           |
