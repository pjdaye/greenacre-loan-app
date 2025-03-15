Feature: Loan Application Processing - Conventional Loans

    Background:
        Given loan application processing system is running

    Scenario: Successfully Approved Conventional Loan Application
        When borrower FICO is "<borrower_fico>", Co-borrower FICO is "<co-borrower_fico>", property type is "<property_type>", LTV is "<ltv>"%, loan amount is USD "<loan_amount>", loan type "<loan_type>", loan period is "<loan_period>" years
        And borrower submits the loan application
        Then loan is "<approved_status>" with "<loan_program>" program, and rate is returned

        Examples:
            | borrower_fico | co-borrower_fico | property_type     | ltv | loan_amount | loan_type  | loan_period | approved_status | loan_program | rate |
            | 620           | None             | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 620           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Single Family     | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Condominium       | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Townhouse         | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 40          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 15          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 30          | approved        | Conventional | Rate |
            | 659           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 660           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | None             | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 299              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 300              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 519              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 520              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 619              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 620              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 659              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 660              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 850              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Single Family     | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Condominium       | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Townhouse         | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 79  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 50000       | Fixed      | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 15          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 30          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 50000       | Adjustable | 40          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 418000      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 418000      | Adjustable | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 418001      | Fixed      | 10          | approved        | Conventional | Rate |
            | 850           | 851              | Multi-Family Unit | 80  | 418001      | Adjustable | 10          | approved        | Conventional | Rate |
