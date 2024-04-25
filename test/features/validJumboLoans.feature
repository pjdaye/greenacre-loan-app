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
            | TestNo01      | BLastName01   | 760          | CFirstName01    | BLastName01     | 850            | Townhouse         | 33001   | 529113  | 111113   | 418000   | Fixed      | 10 years | Jumbo   | 6.75  |
            | TestNo02      | BLastName02   | 679          | CFirstName02    | BLastName02     | 850            | Single Family     | 33002   | 1249998 | 249999   | 999999   | Adjustable | 15 years | Jumbo   | 5.625 |
            | TestNo03      | BLastName03   | 661          | CFirstName03    | BLastName03     | 849            | Condominium       | 33003   | 1265821 | 265822   | 999999   | Fixed      | 10 years | Jumbo   | 7.125 |
            | TestNo04      | BLastName04   | 679          | CFirstName04    | BLastName04     | 620            | Multi-Family Unit | 33004   | 522501  | 104500   | 418001   | Fixed      | 30 years | Jumbo   | 7.125 |
            | TestNo05      | BLastName05   | 761          | CFirstName05    | BLastName05     | 849            | Townhouse         | 33004   | 522501  | 104500   | 418001   | Adjustable | 10 years | Jumbo   | 5.25  |
            | TestNo06      | BLastName06   | 661          | CFirstName06    | BLastName06     | 621            | Single Family     | 33006   | 522501  | 104500   | 418001   | Fixed      | 30 years | Jumbo   | 7.125 |
            | TestNo07      | BLastName07   | 680          | CFirstName07    | BLastName07     | 620            | Multi-Family Unit | 33007   | 1265821 | 265822   | 999999   | Adjustable | 15 years | Jumbo   | 5.5   |
            | TestNo08      | BLastName08   | 761          | CFirstName08    | BLastName08     | 620            | Multi-Family Unit | 33008   | 522501  | 104500   | 418001   | Fixed      | 10 years | Jumbo   | 6.75  |
            | TestNo09      | BLastName09   | 850          | CFirstName09    | BLastName09     | 849            | Multi-Family Unit | 33009   | 529113  | 111113   | 418000   | Adjustable | 15 years | Jumbo   | 5.25  |
            | TestNo10      | BLastName10   | 679          | CFirstName10    | BLastName10     | 621            | Townhouse         | 33010   | 529113  | 111113   | 418000   | Adjustable | 40 years | Jumbo   | 5.625 |
            | TestNo11      | BLastName11   | 701          | CFirstName11    | BLastName11     | 620            | Multi-Family Unit | 33011   | 1249998 | 249999   | 999999   | Adjustable | 10 years | Jumbo   | 5.375 |
            | TestNo12      | BLastName12   | 700          | CFirstName12    | BLastName12     | 621            | Condominium       | 33012   | 522500  | 104500   | 418000   | Fixed      | 15 years | Jumbo   | 6.875 |
            | TestNo13      | BLastName13   | 701          | CFirstName13    | BLastName13     | 621            | Condominium       | 33013   | 1249998 | 249999   | 999999   | Adjustable | 10 years | Jumbo   | 5.375 |
