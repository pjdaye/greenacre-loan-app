Feature: Loan Application Processing - Jumpo Loans

    Background:
        Given loan application processing system is running

    Scenario: Successfully Approved Jumbo Loan Application
        When borrower FICO is "<borrower_fico>", Co-borrower FICO is "<co-borrower_fico>", property type is "<property_type>", LTV is "<ltv>"%, loan amount is USD "<loan_amount>", loan type "<loan_type>", loan period is "<loan_period>" years
        And borrower submits the loan application
        Then loan is "<approved_status>" with "<loan_program>" program, and rate is returned

        Examples:
            | borrower_fico | co-borrower_fico | property_type | ltv | loan_amount | loan_type | loan_period | approved_status | loan_program | rate |
            | 300           | None             | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | None             | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 299              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 300              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 519              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 520              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 619              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 620              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 659              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 660              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 850              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 300           | 851              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | None             | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 299              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 300              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 519              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 520              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 619              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 620              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 659              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 660              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 850              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 79  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 79  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 79  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 79  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 80  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 80  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 80  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 80  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 619           | 851              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | None             | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 299              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 300              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 519              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 520              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 619              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 620              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 659              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 660              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 850              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 620           | 851              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | None             | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 299              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 300              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 519              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 520              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 619              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 620              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 659              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 660              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 850              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 659           | 851              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | None             | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 299              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 300              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 519              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 520              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 619              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 620              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 659              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 660              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 850              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 660           | 851              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | None             | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 299              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 300              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 519              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 520              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 619              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 620              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 659              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 660              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 850              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Single Family | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Condominium   | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 81  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 81  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 81  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 81  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 99  | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 99  | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 99  | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 99  | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 100 | 50000       | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 100 | 50000       | Fixed     | 30          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 100 | 418000      | Fixed     | 15          | approved        | FHA          | Rate |
            | 850           | 851              | Townhouse     | 100 | 418000      | Fixed     | 30          | approved        | FHA          | Rate |
