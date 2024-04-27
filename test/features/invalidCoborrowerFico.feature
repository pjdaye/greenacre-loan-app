Feature: Borrower denied loan for invalid coborrower FICO score

    Scenario Outline: User is denied for invalid coborrower FICO
        Given the Greenacre home page is displayed
        When a borrower enters borrower information of "<borrowerFName>", "<borrowerLName>", and "<borrowerFico>"
        And a borrower enters coborrower information of "<coborrowerFName>", "<coborrowerLName>", and "<coborrowerFico>"
        And a borrower enters purchase information of "<propertyType>", "<zipCode>", "<price>", and "<downPmt>"
        And a borrower enters loan information of "<loanAmt>", "<loanType>", and "<period>"
        And a borrower submits the application for approval
        Then the loan is denied

        # title-format: Denial Coborrower Fico Invalid - <borrowerFName>
        Examples:
            | borrowerFName | borrowerLName | borrowerFico | coborrowerFName | coborrowerLName | coborrowerFico | propertyType      | zipCode | price   | downPmt | loanAmt | loanType   | period   |
            | TestNo01      | BLastName01   | 681          | CFirstName01    | BLastName01     | 299            | Single Family     | 33001   | 529113  | 111113  | 418000  | Fixed	     | 10 years |
            | TestNo02      | BLastName02   | 661          | CFirstName02    | BLastName02     | 299            | Townhouse         | 33002   | 1249998 | 249999  | 999999  | Adjustable | 15 years |
            | TestNo03      | BLastName03   | 700          | CFirstName03    | BLastName03     | 851            | Single Family     | 33003   | 1250000 | 250000  | 1000000 | Fixed      | 10 years |
            | TestNo04      | BLastName04   | 300          | CFirstName04    | BLastName04     | 851            | Multi-Family Unit | 33004   | 1265821 | 265822  | 999999  | Adjustable | 30 years |
            | TestNo05      | BLastName05   | 681          | CFirstName05    | BLastName05     | 851            | Townhouse         | 33005   | 61728   | 11728   | 50000   | Adjustable | 40 years |
            | TestNo06      | BLastName06   | 760          | CFirstName06    | BLastName06     | 299            | Multi-Family Unit | 33006   | 516050  | 98049   | 418001  | Adjustable | 40 years |
            | TestNo07      | BLastName07   | 621          | CFirstName07    | BLastName07     | 299            | Condominium       | 33007   | 529112  | 111113  | 417999  | Fixed      | 40 years |
            | TestNo08      | BLastName08   | 761          | CFirstName08    | BLastName08     | 299            | Single Family     | 33008   | 63291   | 13291   | 50000   | Fixed      | 30 years |
            | TestNo09      | BLastName09   | 849          | CFirstName09    | BLastName09     | 299            | Condominium       | 33009   | 63292   | 13291   | 50001   | Adjustable | 10 years |
            | TestNo10      | BLastName10   | 659          | CFirstName10    | BLastName10     | 851            | Condominium       | 33010   | 529112  | 111113  | 417999  | Adjustable | 15 years |
            | TestNo11      | BLastName11   | 640          | CFirstName11    | BLastName11     | 851            | Townhouse         | 33011   | 62501   | 12500   | 50001   | Adjustable | 10 years |
            | TestNo12      | BLastName12   | 849          | CFirstName12    | BLastName12     | 851            | Condominium       | 33012   | 529115  | 111114  | 418001  | Adjustable | 40 years |
            | TestNo13      | BLastName13   | 850          | CFirstName13    | BLastName13     | 299            | Multi-Family Unit | 33013   | 1234567 | 234567  | 1000000 | Adjustable | 40 years |
            | TestNo14      | BLastName14   | 700          | CFirstName14    | BLastName14     | 299            | Townhouse         | 33014   | 1249998 | 249999  | 999999  | Fixed      | 10 years |
            | TestNo15      | BLastName15   | 680          | CFirstName15    | BLastName15     | 851            | Townhouse         | 33015   | 529113  | 111113  | 418000  | Adjustable | 30 years |
            | TestNo16      | BLastName16   | 659          | CFirstName16    | BLastName16     | 299            | Single Family     | 33016   | 1234567 | 234567  | 1000000 | Adjustable | 15 years |
            | TestNo17      | BLastName17   | 300          | CFirstName17    | BLastName17     | 299            | Condominium       | 33017   | 62500   | 12500   | 50000   | Adjustable | 10 years |
            | TestNo18      | BLastName18   | 661          | CFirstName18    | BLastName18     | 851            | Townhouse         | 33018   | 522500  | 104500  | 418000  | Adjustable | 30 years |
            | TestNo19      | BLastName19   | 620          | CFirstName19    | BLastName19     | 851            | Single Family     | 33019   | 1234566 | 234567  | 999999  | Fixed      | 15 years |
            | TestNo20      | BLastName20   | 619          | CFirstName20    | BLastName20     | 299            | Townhouse         | 33020   | 522498  | 104499  | 417999  | Fixed      | 10 years |
            | TestNo21      | BLastName21   | 639          | CFirstName21    | BLastName21     | 851            | Townhouse         | 33021   | 529113  | 111113  | 418000  | Adjustable | 40 years |
            | TestNo22      | BLastName22   | 680          | CFirstName22    | BLastName22     | 299            | Townhouse         | 33022   | 516048  | 98049   | 417999  | Fixed      | 10 years |
            | TestNo23      | BLastName23   | 759          | CFirstName23    | BLastName23     | 299            | Multi-Family Unit | 33023   | 1265822 | 265822  | 1000000 | Adjustable | 40 years |
            | TestNo24      | BLastName24   | 301          | CFirstName24    | BLastName24     | 299            | Single Family     | 33024   | 1249998 | 249999  | 999999  | Fixed      | 15 years |
            | TestNo25      | BLastName25   | 660          | CFirstName25    | BLastName25     | 851            | Townhouse         | 33025   | 522500  | 104500  | 418000  | Fixed      | 30 years |
            | TestNo26      | BLastName26   | 619          | CFirstName26    | BLastName26     | 851            | Multi-Family Unit | 33026   | 62501   | 12500   | 50001   | Adjustable | 40 years |
            | TestNo27      | BLastName27   | 759          | CFirstName27    | BLastName27     | 851            | Townhouse         | 33027   | 1265821 | 265822  | 999999  | Adjustable | 40 years |
            | TestNo28      | BLastName28   | 679          | CFirstName28    | BLastName28     | 299            | Single Family     | 33028   | 61729   | 11728   | 50001   | Fixed      | 10 years |
            | TestNo29      | BLastName29   | 640          | CFirstName29    | BLastName29     | 299            | Townhouse         | 33029   | 61729   | 11728   | 50001   | Fixed      | 15 years |
            | TestNo30      | BLastName30   | 641          | CFirstName30    | BLastName30     | 299            | Multi-Family Unit | 33030   | 1249998 | 249999  | 999999  | Adjustable | 15 years |
            | TestNo31      | BLastName31   | 850          | CFirstName31    | BLastName31     | 851            | Condominium       | 33031   | 61729   | 11728   | 50001   | Fixed      | 40 years |
            | TestNo32      | BLastName32   | 701          | CFirstName32    | BLastName32     | 299            | Single Family     | 33032   | 516049  | 98049   | 418000  | Adjustable | 15 years |
            | TestNo33      | BLastName33   | 301          | CFirstName33    | BLastName33     | 851            | Condominium       | 33033   | 1234567 | 234567  | 1000000 | Fixed      | 10 years |
            | TestNo34      | BLastName34   | 701          | CFirstName34    | BLastName34     | 851            | Condominium       | 33034   | 1265822 | 265822  | 1000000 | Adjustable | 40 years |
            | TestNo35      | BLastName35   | 639          | CFirstName35    | BLastName35     | 299            | Multi-Family Unit | 33035   | 516049  | 98049   | 418000  | Adjustable | 10 years |
            | TestNo36      | BLastName36   | 620          | CFirstName36    | BLastName36     | 299            | Multi-Family Unit | 33036   | 516048  | 98049   | 417999  | Fixed      | 10 years |
            | TestNo37      | BLastName37   | 660          | CFirstName37    | BLastName37     | 299            | Single Family     | 33037   | 61729   | 11728   | 50001   | Fixed      | 40 years |
            | TestNo38      | BLastName38   | 641          | CFirstName38    | BLastName38     | 851            | Single Family     | 33038   | 516049  | 98049   | 418000  | Adjustable | 15 years |
            | TestNo39      | BLastName39   | 679          | CFirstName39    | BLastName39     | 851            | Single Family     | 33039   | 1265821 | 265822  | 999999  | Fixed      | 10 years |
            | TestNo40      | BLastName40   | 760          | CFirstName40    | BLastName40     | 851            | Multi-Family Unit | 33040   | 529112  | 111113  | 417999  | Fixed      | 40 years |
            | TestNo41      | BLastName41   | 621          | CFirstName41    | BLastName41     | 851            | Multi-Family Unit | 33041   | 63292   | 13291   | 50001   | Fixed      | 15 years |
            | TestNo42      | BLastName42   | 699          | CFirstName42    | BLastName42     | 851            | Condominium       | 33042   | 1234567 | 234567  | 1000000 | Adjustable | 15 years |
            | TestNo43      | BLastName43   | 699          | CFirstName43    | BLastName43     | 299            | Multi-Family Unit | 33043   | 522498  | 104499  | 417999  | Adjustable | 15 years |
            | TestNo44      | BLastName44   | 761          | CFirstName44    | BLastName44     | 851            | Condominium       | 33044   | 516048  | 98049   | 417999  | Fixed      | 30 years |
