Feature: Loan Application Processing

    Background:
        Given loan application processing system is running

    Scenario: Successfully Approved Jumbo Loan Application
        When borrower FICO is "750", Co-borrower FICO is "700", property type is "Condominium", LTV is "75"%, loan amount is USD "500000", loan type "Fixed", loan period is "30" years
        And borrower submits the loan application
        Then loan is "approved" with "Jumbo" program, and rate is returned

    Scenario: Conventional Loan Approval at Boundary Conditions
        When borrower FICO is "620", Co-borrower FICO is "None", property type is "Townhouse", LTV is "80"%, loan amount is USD "50000", loan type "Adjustable", loan period is "10" years
        And borrower submits the loan application
        Then loan is "approved" with "Conventional" program, and rate is returned

    Scenario: FHA Loan Denied for Ineligible Property Type (final)
        When borrower FICO is "680", Co-borrower FICO is "None", property type is "Multi-Family Unit", LTV is "70"%, loan amount is USD "200000", loan type "Fixed", loan period is "15" years
        And borrower submits the loan application
        Then loan is "approved" with "Conventional" program, and rate is returned

    Scenario: FHA Loan Denied at Loan Amount Boundary (final)
        When borrower FICO is "700", Co-borrower FICO is "None", property type is "Condominium", LTV is "95"%, loan amount is USD "418001", loan type "Fixed", loan period is "30" years
        And borrower submits the loan application
        Then loan is "denied" with "NA" program, and rate is returned

    Scenario: Jumbo Loan Denied Due to Exceeding LTV Threshold (final)
        When borrower FICO is "700", Co-borrower FICO is "None", property type is "Condominium", LTV is "81"%, loan amount is USD "450000", loan type "Fixed", loan period is "30" years
        And borrower submits the loan application
        Then loan is "denied" with "NA" program, and rate is returned

    Scenario: Cascading Denial - Jumbo and Conventional Loans Ineligible
        When borrower FICO is "610", Co-borrower FICO is "None", property type is "Condominium", LTV is "85"%, loan amount is USD "500000", loan type "Adjustable", loan period is "30" years
        And borrower submits the loan application
        Then loan is "denied" with "NA" program, and rate is returned
