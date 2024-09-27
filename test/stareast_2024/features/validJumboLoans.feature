Feature: Borrower approved for a Jumbo loan

    Scenario Outline: User is approved for Jumbo loan
        Given the Greenacre home page is displayed
        When a borrower enters borrower information of "<borrowerFName>", "<borrowerLName>", and "<borrowerFico>"
        And a borrower enters coborrower information of "<coborrowerFName>", "<coborrowerLName>", and "<coborrowerFico>"
        And a borrower enters purchase information of "<propertyType>", "<zipCode>", "<price>", and "<downPmt>"
        And a borrower enters loan information of "<loanAmt>", "<loanType>", and "<period>"
        And a borrower submits the application for approval
        Then the loan is approved
        And the loan program is "<program>"
        And the interest rate is "<rate>"

        # title-format: Approve Jumbo Loan - <borrowerFName>
        Examples:
            | borrowerFName | borrowerLName | borrowerFico | coborrowerFName | coborrowerLName | coborrowerFico | propertyType      | zipCode | price   | downPmt  | loanAmt  | loanType   | period   | program | rate  |
            | TestNo01      | BLastName01   | 850          | CFirstName01    | BLastName01     | 621            | Condominium       | 33001   | 1265822 | 265822   | 1000000  | Fixed      | 40 years | Jumbo   | 6.75  |
            | TestNo02      | BLastName02   | 759          | CFirstName02    | BLastName02     | 850            | Condominium       | 33002   | 1250000 | 250000   | 1000000  | Fixed      | 30 years | Jumbo   | 6.875 |
            | TestNo03      | BLastName03   | 699          | CFirstName03    | BLastName03     | 621            | Townhouse         | 33003   | 1265822 | 265822   | 1000000  | Fixed      | 15 years | Jumbo   | 7     |
            | TestNo04      | BLastName04   | 660          | CFirstName04    | BLastName04     | 621            | Condominium       | 33004   | 1265822 | 265822   | 1000000  | Adjustable | 15 years | Jumbo   | 5.625 |
            | TestNo05      | BLastName05   | 680          | CFirstName05    | BLastName05     | 620            | Multi-Family Unit | 33005   | 1265821 | 265822   | 999999   | Adjustable | 15 years | Jumbo   | 5.5   |
            | TestNo06      | BLastName06   | 850          | CFirstName06    | BLastName06     | 849            | Multi-Family Unit | 33006   | 529113  | 111113   | 418000   | Adjustable | 15 years | Jumbo   | 5.25  |
            | TestNo07      | BLastName07   | 679          | CFirstName07    | BLastName07     | 621            | Townhouse         | 33007   | 529113  | 111113   | 418000   | Adjustable | 40 years | Jumbo   | 5.625 |
            | TestNo08      | BLastName08   | 700          | CFirstName08    | BLastName08     | 621            | Condominium       | 33008   | 522500  | 104500   | 418000   | Fixed      | 15 years | Jumbo   | 6.875 |
