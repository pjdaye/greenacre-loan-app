Feature: Borrower denied loan for invalid borrower FICO score

    Scenario Outline: User is denied for invalid borrower FICO
        Given the Greenacre home page is displayed
        When a borrower enters borrower information of "<borrowerFName>", "<borrowerLName>", and "<borrowerFico>"
        And a borrower enters coborrower information of "<coborrowerFName>", "<coborrowerLName>", and "<coborrowerFico>"
        And a borrower enters purchase information of "<propertyType>", "<zipCode>", "<price>", and "<downPmt>"
        And a borrower enters loan information of "<loanAmt>", "<loanType>", and "<period>"
        And a borrower submits the application for approval
        Then the loan is denied

        # title-format: Denial Borrower Fico Invalid - <borrowerFName>
        Examples:
            | borrowerFName | borrowerLName | borrowerFico | coborrowerFName | coborrowerLName | coborrowerFico | propertyType        | zipCode | price   | downPmt | loanAmt | loanType   | period   |
            | TestNo01      | BLastName01   | 851          | CFirstName01    | BLastName01     | 420            | Townhouse           | 33001   | 529112  | 111113  | 417999  | Fixed      | 40 years |
            | TestNo02      | BLastName02   |              | CFirstName02    | BLastName02     | 620            | Single Family       | 33002   | 63291   | 13291   | 50000   | Fixed      | 15 years |
            | TestNo03      | BLastName03   |              | CFirstName03    | BLastName03     | 321            | Townhouse           | 33003   | 516049  | 98049   | 418000  | Adjustable | 30 years |
            | TestNo04      | BLastName04   |              | CFirstName04    | BLastName04     | 619            | Multi-Family Unit   | 33004   | 522498  | 104499  | 417999  | Adjustable | 40 years |
            | TestNo05      | BLastName05   | 299          | CFirstName05    | BLastName05     |                | Multi-Family Unit   | 33005   | 1234566 | 234567  | 999999  | Adjustable | 40 years |
            | TestNo06      | BLastName06   | 299          | CFirstName06    | BLastName06     | 421            | Single Family       | 33006   | 62501   | 12500   | 50001   | Fixed      | 10 years |
            | TestNo07      | BLastName07   | 851          | CFirstName07    | BLastName07     | 619            | Single Family       | 33007   | 61728   | 11728   | 50000   | Adjustable | 10 years |
            | TestNo08      | BLastName08   |              | CFirstName08    | BLastName08     | 520            | Condominium         | 33008   | 1265821 | 265822  | 999999  | Adjustable | 10 years |
            | TestNo09      | BLastName09   | 299          | CFirstName09    | BLastName09     | 620            | Condominium         | 33009   | 1265822 | 265822  | 1000000 | Adjustable | 30 years |
            | TestNo10      | BLastName10   |              | CFirstName10    | BLastName10     | 421            | Multi-Family Unit   | 33010   | 529115  | 111114  | 418001  | Adjustable | 10 years |
            | TestNo11      | BLastName11   | 851          | CFirstName11    | BLastName11     | 520            | Condominium         | 33011   | 522500  | 104500  | 418000  | Fixed      | 15 years |
            | TestNo12      | BLastName12   | 851          | CFirstName12    | BLastName12     | 419            | Multi-Family Unit   | 33012   | 1265822 | 265822  | 1000000 | Adjustable | 30 years |
            | TestNo13      | BLastName13   | 851          | CFirstName13    | BLastName13     | 621            | Single Family       | 33013   | 1265821 | 265822  | 999999  | Fixed      | 40 years |
            | TestNo14      | BLastName14   | 851          | CFirstName14    | BLastName14     | 850            | Condominium         | 33014   | 61729   | 11728   | 50001   | Adjustable | 30 years |
            | TestNo15      | BLastName15   | 851          | CFirstName15    | BLastName15     | 300            | Single Family       | 33015   | 522501  | 104500  | 418001  | Adjustable | 30 years |
            | TestNo16      | BLastName16   | 851          | CFirstName16    | BLastName16     | 321            | Condominium         | 33016   | 1265821 | 265822  | 999999  | Adjustable | 40 years |
            | TestNo17      | BLastName17   | 299          | CFirstName17    | BLastName17     | 420            | Townhouse           | 33017   | 516050  | 98049   | 418001  | Fixed      | 15 years |
            | TestNo18      | BLastName18   |              | CFirstName18    | BLastName18     | 320            | Single Family       | 33018   | 1250000 | 250000  | 1000000 | Fixed      | 40 years |
            | TestNo19      | BLastName19   | 851          | CFirstName19    | BLastName19     | 320            | Single Family       | 33019   | 516049  | 98049   | 418000  | Fixed      | 15 years |
            | TestNo20      | BLastName20   |              | CFirstName20    | BLastName20     | 621            | Townhouse           | 33020   | 61729   | 11728   | 50001   | Adjustable | 15 years |
            | TestNo21      | BLastName21   |              | CFirstName21    | BLastName21     |                | Single Family       | 33021   | 61729   | 11728   | 50001   | Adjustable | 15 years |
            | TestNo22      | BLastName22   |              | CFirstName22    | BLastName22     | 319            | Townhouse           | 33022   | 1265821 | 265822  | 999999  | Fixed      | 15 years |
            | TestNo23      | BLastName23   | 851          | CFirstName23    | BLastName23     | 620            | Townhouse           | 33023   | 1234566 | 234567  | 999999  | Adjustable | 10 years |
            | TestNo24      | BLastName24   | 299          | CFirstName24    | BLastName24     | 300            | Multi-Family Unit   | 33024   | 61728   | 11728   | 50000   | Adjustable | 30 years |
            | TestNo25      | BLastName25   | 851          | CFirstName25    | BLastName25     | 849            | Multi-Family Unit   | 33025   | 61729   | 11728   | 50001   | Fixed      | 30 years |
            | TestNo26      | BLastName26   |              | CFirstName26    | BLastName26     | 850            | Single Family       | 33026   | 61728   | 11728   | 50000   | Adjustable | 10 years |
            | TestNo27      | BLastName27   | 299          | CFirstName27    | BLastName27     | 301            | Single Family       | 33027   | 516049  | 98049   | 418000  | Fixed      | 15 years |
            | TestNo28      | BLastName28   | 299          | CFirstName28    | BLastName28     | 320            | Single Family       | 33028   | 522498  | 104499  | 417999  | Fixed      | 10 years |
            | TestNo29      | BLastName29   |              | CFirstName29    | BLastName29     | 300            | Single Family       | 33029   | 1265821 | 265822  | 999999  | Fixed      | 30 years |
            | TestNo30      | BLastName30   | 299          | CFirstName30    | BLastName30     | 621            | Townhouse           | 33030   | 1234566 | 234567  | 999999  | Adjustable | 30 years |
            | TestNo31      | BLastName31   | 851          | CFirstName31    | BLastName31     | 421            | Condominium         | 33031   | 516050  | 98049   | 418001  | Adjustable | 15 years |
            | TestNo32      | BLastName32   | 299          | CFirstName32    | BLastName32     | 850            | Townhouse           | 33032   | 1234566 | 234567  | 999999  | Fixed      | 30 years |
            | TestNo33      | BLastName33   | 299          | CFirstName33    | BLastName33     | 521            | Condominium         | 33033   | 1234567 | 234567  | 1000000 | Adjustable | 40 years |
            | TestNo34      | BLastName34   | 851          | CFirstName34    | BLastName34     | 319            | Multi-Family Unit   | 33034   | 1234567 | 234567  | 1000000 | Fixed      | 30 years |
            | TestNo35      | BLastName35   | 851          | CFirstName35    | BLastName35     | 301            | Single Family       | 33035   | 1250000 | 250000  | 1000000 | Adjustable | 10 years |
            | TestNo36      | BLastName36   | 299          | CFirstName36    | BLastName36     | 849            | Condominium         | 33036   | 529112  | 111113  | 417999  | Adjustable | 30 years |
            | TestNo37      | BLastName37   |              | CFirstName37    | BLastName37     | 301            | Single Family       | 33037   | 1265822 | 265822  | 1000000 | Adjustable | 10 years |
            | TestNo38      | BLastName38   | 299          | CFirstName38    | BLastName38     | 619            | Townhouse           | 33038   | 1265821 | 265822  | 999999  | Fixed      | 15 years |
            | TestNo39      | BLastName39   |              | CFirstName39    | BLastName39     | 521            | Single Family       | 33039   | 522498  | 104499  | 417999  | Adjustable | 10 years |
            | TestNo40      | BLastName40   |              | CFirstName40    | BLastName40     | 849            | Townhouse           | 33040   | 1234567 | 234567  | 1000000 | Adjustable | 10 years |
            | TestNo41      | BLastName41   |              | CFirstName41    | BLastName41     | 419            | Townhouse           | 33041   | 1249998 | 249999  | 999999  | Adjustable | 10 years |
            | TestNo42      | BLastName42   |              | CFirstName42    | BLastName42     | 420            | Multi-Family Unit   | 33042   | 529113  | 111113  | 418000  | Adjustable | 40 years |
            | TestNo43      | BLastName43   | 299          | CFirstName43    | BLastName43     | 321            | Multi-Family Unit   | 33043   | 63292   | 13291   | 50001   | Fixed      | 15 years |
            | TestNo44      | BLastName44   | 299          | CFirstName44    | BLastName44     | 520            | Single Family       | 33044   | 529113  | 111113  | 418000  | Fixed      | 10 years |
            | TestNo45      | BLastName45   | 299          | CFirstName45    | BLastName45     | 319            | Single Family       | 33045   | 516050  | 98049   | 418001  | Fixed      | 30 years |
            | TestNo46      | BLastName46   | 299          | CFirstName46    | BLastName46     | 519            | Single Family       | 33046   | 1265821 | 265822  | 999999  | Adjustable | 40 years |
            | TestNo47      | BLastName47   | 299          | CFirstName47    | BLastName47     | 419            | Multi-Family Unit   | 33047   | 529115  | 111114  | 418001  | Fixed      | 10 years |
            | TestNo48      | BLastName48   | 851          | CFirstName48    | BLastName48     | 521            | Multi-Family Unit   | 33048   | 61728   | 11728   | 50000   | Adjustable | 10 years |
            | TestNo49      | BLastName49   | 851          | CFirstName49    | BLastName49     |                | Multi-Family Unit   | 33049   | 62500   | 12500   | 50000   | Fixed      | 40 years |
            | TestNo50      | BLastName50   |              | CFirstName50    | BLastName50     | 519            | Condominium         | 33050   | 529113  | 111113  | 418000  | Adjustable | 40 years |
            | TestNo51      | BLastName51   | 851          | CFirstName51    | BLastName51     | 519            | Single Family       | 33051   | 61728   | 11728   | 50000   | Fixed      | 15 years |
