Feature: Borrower approved for a FHA loan

    Scenario Outline: User is approved for FHA loan
        Given the Greenacre home page is displayed
        When a borrower enters borrower information of "<borrowerFName>", "<borrowerLName>", and "<borrowerFico>"
        And a borrower enters coborrower information of "<coborrowerFName>", "<coborrowerLName>", and "<coborrowerFico>"
        And a borrower enters purchase information of "<propertyType>", "<zipCode>", "<price>", and "<downPmt>"
        And a borrower enters loan information of "<loanAmt>", "<loanType>", and "<period>"
        And a borrower submits the application for approval
        Then the loan is approved
        And the loan program is "<program>"
        And the interest rate is "<rate>"

        # title-format: Approve FHA Loan - <borrowerFName>
        Examples:
            | borrowerFName | borrowerLName | borrowerFico | coborrowerFName | coborrowerLName | coborrowerFico | propertyType  | zipCode | price  | downPmt | loanAmt | loanType | period   | program | rate  |
            | TestNo01      | BLastName01   | 301          | CFirstName01    | BLastName01     | 319            | Condominium   | 33001   | 62500  | 12500   | 50000   | Fixed    | 30 years | FHA     | 8.375 |
            | TestNo02      | BLastName02   | 620          | CFirstName02    | BLastName02     | 321            | Single Family | 33002   | 61729  | 11728   | 50001   | Fixed    | 30 years | FHA     | 8.125 |
            | TestNo03      | BLastName03   | 659          | CFirstName03    | BLastName03     | 519            | Single Family | 33003   | 522498 | 104499  | 417999  | Fixed    | 15 years | FHA     | 7.875 |
            | TestNo04      | BLastName04   | 621          | CFirstName04    | BLastName04     | 421            | Townhouse     | 33004   | 529113 | 111113  | 418000  | Fixed    | 30 years | FHA     | 8     |
            | TestNo05      | BLastName05   | 701          | CFirstName05    | BLastName05     | 519            | Condominium   | 33005   | 62501  | 12500   | 50001   | Fixed    | 30 years | FHA     | 7.5   |
            | TestNo06      | BLastName06   | 621          | CFirstName06    | BLastName06     | 850            | Condominium   | 33006   | 516048 | 98049   | 417999  | Fixed    | 30 years | FHA     | 7.75  |
            | TestNo07      | BLastName07   | 641          | CFirstName07    | BLastName07     | 621            | Townhouse     | 33007   | 62501  | 12500   | 50001   | Fixed    | 15 years | FHA     | 7.625 |
            | TestNo08      | BLastName08   | 701          | CFirstName08    | BLastName08     | 321            | Townhouse     | 33008   | 61728  | 11728   | 50000   | Fixed    | 15 years | FHA     | 7.625 |
            | TestNo09      | BLastName09   | 759          | CFirstName09    | BLastName09     | 520            | Townhouse     | 33009   | 61729  | 11728   | 50001   | Fixed    | 30 years | FHA     | 7.375 |
            | TestNo10      | BLastName10   | 660          | CFirstName10    | BLastName10     | 520            | Townhouse     | 33010   | 61729  | 11728   | 50001   | Fixed    | 15 years | FHA     | 7.625 |
            | TestNo11      | BLastName11   | 640          | CFirstName11    | BLastName11     | 300            | Single Family | 33011   | 62501  | 12500   | 50001   | Fixed    | 30 years | FHA     | 8.125 |
            | TestNo12      | BLastName12   | 700          | CFirstName12    | BLastName12     | 319            | Townhouse     | 33012   | 529113 | 111113  | 418000  | Fixed    | 15 years | FHA     | 7.75  |
            | TestNo13      | BLastName13   | 761          | CFirstName13    | BLastName13     | 301            | Condominium   | 33013   | 63291  | 13291   | 50000   | Fixed    | 30 years | FHA     | 7.625 |
            | TestNo14      | BLastName14   | 621          | CFirstName14    | BLastName14     | 321            | Condominium   | 33014   | 61729  | 11728   | 50001   | Fixed    | 15 years | FHA     | 8.125 |
            | TestNo15      | BLastName15   | 759          | CFirstName15    | BLastName15     | 421            | Townhouse     | 33015   | 61729  | 11728   | 50001   | Fixed    | 30 years | FHA     | 7.5   |
            | TestNo16      | BLastName16   | 300          | CFirstName16    | BLastName16     | 320            | Condominium   | 33016   | 62501  | 12500   | 50001   | Fixed    | 30 years | FHA     | 8.25  |
            | TestNo17      | BLastName17   | 850          | CFirstName17    | BLastName17     | 419            | Townhouse     | 33017   | 63292  | 13291   | 50001   | Fixed    | 30 years | FHA     | 7.5   |
            | TestNo18      | BLastName18   | 761          | CFirstName18    | BLastName18     | 850            | Condominium   | 33018   | 62501  | 12500   | 50001   | Fixed    | 30 years | FHA     | 7.125 |
            | TestNo19      | BLastName19   | 640          | CFirstName19    | BLastName19     | 320            | Condominium   | 33019   | 62501  | 12500   | 50001   | Fixed    | 30 years | FHA     | 8     |
            | TestNo20      | BLastName20   | 680          | CFirstName20    | BLastName20     | 849            | Condominium   | 33020   | 61729  | 11728   | 50001   | Fixed    | 15 years | FHA     | 7.375 |
            | TestNo21      | BLastName21   | 849          | CFirstName21    | BLastName21     | 421            | Townhouse     | 33021   | 529113 | 111113  | 418000  | Fixed    | 15 years | FHA     | 7.375 |
            | TestNo22      | BLastName22   | 681          | CFirstName22    | BLastName22     | 320            | Condominium   | 33022   | 522500 | 104500  | 418000  | Fixed    | 30 years | FHA     | 7.75  |
            | TestNo23      | BLastName23   | 301          | CFirstName23    | BLastName23     | 300            | Condominium   | 33023   | 529112 | 111113  | 417999  | Fixed    | 15 years | FHA     | 8.375 |
            | TestNo24      | BLastName24   | 699          | CFirstName24    | BLastName24     | 321            | Single Family | 33024   | 522498 | 104499  | 417999  | Fixed    | 15 years | FHA     | 7.75  |
            | TestNo25      | BLastName25   | 701          | CFirstName25    | BLastName25     | 319            | Single Family | 33025   | 63292  | 13291   | 50001   | Fixed    | 30 years | FHA     | 7.75  |
            | TestNo26      | BLastName26   | 761          | CFirstName26    | BLastName26     | 521            | Townhouse     | 33026   | 61729  | 11728   | 50001   | Fixed    | 30 years | FHA     | 7.25  |
            | TestNo27      | BLastName27   | 301          | CFirstName27    | BLastName27     | 420            | Single Family | 33027   | 63292  | 13291   | 50001   | Fixed    | 15 years | FHA     | 8.125 |
            | TestNo28      | BLastName28   | 680          | CFirstName28    | BLastName28     | 301            | Townhouse     | 33028   | 63292  | 13291   | 50001   | Fixed    | 15 years | FHA     | 7.875 |
            | TestNo29      | BLastName29   | 621          | CFirstName29    | BLastName29     | 300            | Single Family | 33029   | 529113 | 111113  | 418000  | Fixed    | 30 years | FHA     | 8.25  |
