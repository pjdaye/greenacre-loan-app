Feature: Borrower approved for a Conventional loan

    Scenario Outline: User is approved for Conventional loan
        Given the Greenacre home page is displayed
        When a borrower enters borrower information of "<borrowerFName>", "<borrowerLName>", and "<borrowerFico>"
        And a borrower enters coborrower information of "<coborrowerFName>", "<coborrowerLName>", and "<coborrowerFico>"
        And a borrower enters purchase information of "<propertyType>", "<zipCode>", "<price>", and "<downPmt>"
        And a borrower enters loan information of "<loanAmt>", "<loanType>", and "<period>"
        And a borrower submits the application for approval
        Then the loan is approved
        And the loan program is "<program>"
        And the interest rate is "<rate>"

        # title-format: Approve Conventional Loan - <borrowerFName>
        Examples:
            | borrowerFName | borrowerLName | borrowerFico | coborrowerFName | coborrowerLName | coborrowerFico | propertyType      | zipCode | price   | downPmt | loanAmt | loanType    | period   | program      | rate  |
            | TestNo01      | BLastName01   | 679          | CFirstName01    | BLastName01     | 521            | Multi-Family Unit | 33001   | 529112  | 111113  | 417999  |  Fixed      | 30 years | Conventional | 7.375 |
            | TestNo02      | BLastName02   | 620          | CFirstName02    | BLastName02     | 521            | Townhouse         | 33002   | 1250000 | 250000  | 1000000 |  Adjustable | 10 years | Conventional | 6.125 |
            | TestNo03      | BLastName03   | 700          | CFirstName03    | BLastName03     | 521            | Single Family     | 33003   | 63292   | 13291   | 50001   |  Fixed      | 15 years | Conventional | 7.125 |
            | TestNo04      | BLastName05   | 681          | CFirstName05    | BLastName05     | 521            | Condominium       | 33005   | 529115  | 111114  | 418001  |  Fixed      | 40 years | Conventional | 7.25  |
            | TestNo05      | BLastName06   | 641          | CFirstName06    | BLastName06     | 620            | Condominium       | 33006   | 63291   | 13291   | 50000   |  Fixed      | 10 years | Conventional | 7.375 |
            | TestNo06      | BLastName07   | 680          | CFirstName07    | BLastName07     | 520            | Townhouse         | 33007   | 63292   | 13291   | 50001   |  Fixed      | 15 years | Conventional | 7.25  |
            | TestNo07      | BLastName08   | 759          | CFirstName08    | BLastName08     | 521            | Townhouse         | 33008   | 63291   | 13291   | 50000   |  Adjustable | 15 years | Conventional | 5.625 |
            | TestNo08      | BLastName09   | 760          | CFirstName09    | BLastName09     | 850            | Townhouse         | 33009   | 529113  | 111113  | 418000  |  Fixed      | 10 years | Conventional | 6.875 |
            | TestNo09      | BLastName11   | 660          | CFirstName11    | BLastName11     | 850            | Multi-Family Unit | 33011   | 63291   | 13291   | 50000   |  Fixed      | 10 years | Conventional | 7.25  |
            | TestNo10      | BLastName12   | 659          | CFirstName12    | BLastName12     | 520            | Condominium       | 33012   | 529113  | 111113  | 418000  |  Fixed      | 40 years | Conventional | 7.5   |
            | TestNo11      | BLastName13   | 620          | CFirstName13    | BLastName13     | 620            | Townhouse         | 33013   | 63292   | 13291   | 50001   |  Fixed      | 40 years | Conventional | 7.5   |
            | TestNo12      | BLastName14   | 680          | CFirstName14    | BLastName14     | 621            | Single Family     | 33014   | 62500   | 12500   | 50000   |  Adjustable | 30 years | Conventional | 5.625 |
            | TestNo13      | BLastName15   | 641          | CFirstName15    | BLastName15     | 521            | Single Family     | 33015   | 529113  | 111113  | 418000  |  Fixed      | 10 years | Conventional | 7.5   |
            | TestNo14      | BLastName16   | 661          | CFirstName16    | BLastName16     | 849            | Condominium       | 33016   | 1265821 | 265822  | 999999  |  Fixed      | 10 years | Conventional | 7.25  |
            | TestNo15      | BLastName17   | 849          | CFirstName17    | BLastName17     | 849            | Condominium       | 33017   | 63292   | 13291   | 50001   |  Adjustable | 15 years | Conventional | 5.375 |
            | TestNo16      | BLastName19   | 621          | CFirstName19    | BLastName19     | 520            | Condominium       | 33019   | 1265821 | 265822  | 999999  |  Adjustable | 40 years | Conventional | 6.125 |
            | TestNo17      | BLastName20   | 640          | CFirstName20    | BLastName20     | 521            | Townhouse         | 33020   | 63291   | 13291   | 50000   |  Adjustable | 15 years | Conventional | 6     |
            | TestNo18      | BLastName21   | 639          | CFirstName21    | BLastName21     | 521            | Multi-Family Unit | 33021   | 1250000 | 250000  | 1000000 |  Fixed      | 30 years | Conventional | 7.625 |
            | TestNo19      | BLastName22   | 681          | CFirstName22    | BLastName22     | 849            | Single Family     | 33022   | 63291   | 13291   | 50000   |  Fixed      | 40 years | Conventional | 7.125 |
            | TestNo20      | BLastName23   | 640          | CFirstName23    | BLastName23     | 849            | Townhouse         | 33023   | 1265821 | 265822  | 999999  |  Adjustable | 40 years | Conventional | 5.875 |
            | TestNo21      | BLastName24   | 621          | CFirstName24    | BLastName24     | 621            | Condominium       | 33024   | 63291   | 13291   | 50000   |  Fixed      | 30 years | Conventional | 7.5   |
            | TestNo22      | BLastName25   | 640          | CFirstName25    | BLastName25     | 620            | Multi-Family Unit | 33025   | 529115  | 111114  | 418001  |  Fixed      | 15 years | Conventional | 7.375 |
            | TestNo23      | BLastName26   | 620          | CFirstName26    | BLastName26     | 621            | Condominium       | 33026   | 529113  | 111113  | 418000  |  Adjustable | 15 years | Conventional | 6     |
            | TestNo24      | BLastName27   | 761          | CFirstName27    | BLastName27     | 520            | Single Family     | 33027   | 529113  | 111113  | 418000  |  Adjustable | 15 years | Conventional | 5.5   |
            | TestNo25      | BLastName29   | 759          | CFirstName29    | BLastName29     | 849            | Single Family     | 33029   | 63291   | 13291   | 50000   |  Adjustable | 10 years | Conventional | 5.5   |
            | TestNo26      | BLastName30   | 660          | CFirstName30    | BLastName30     | 619            | Multi-Family Unit | 33030   | 529112  | 111113  | 417999  |  Fixed      | 30 years | Conventional | 7.375 |
            | TestNo27      | BLastName31   | 680          | CFirstName31    | BLastName31     | 850            | Condominium       | 33031   | 529112  | 111113  | 417999  |  Adjustable | 30 years | Conventional | 5.625 |
            | TestNo28      | BLastName32   | 681          | CFirstName32    | BLastName32     | 520            | Multi-Family Unit | 33032   | 1265821 | 265822  | 999999  |  Adjustable | 30 years | Conventional | 5.75  |
            | TestNo29      | BLastName33   | 759          | CFirstName33    | BLastName33     | 621            | Multi-Family Unit | 33033   | 63291   | 13291   | 50000   |  Fixed      | 15 years | Conventional | 7     |
            | TestNo30      | BLastName34   | 681          | CFirstName34    | BLastName34     | 619            | Condominium       | 33034   | 522500  | 104500  | 418000  |  Adjustable | 10 years | Conventional | 5.75  |
            | TestNo31      | BLastName35   | 700          | CFirstName35    | BLastName35     | 619            | Condominium       | 33035   | 1265821 | 265822  | 999999  |  Fixed      | 15 years | Conventional | 7.125 |
            | TestNo32      | BLastName36   | 849          | CFirstName36    | BLastName36     | 620            | Condominium       | 33036   | 63291   | 13291   | 50000   |  Fixed      | 10 years | Conventional | 6.875 |
            | TestNo33      | BLastName37   | 641          | CFirstName37    | BLastName37     | 849            | Multi-Family Unit | 33037   | 63292   | 13291   | 50001   |  Adjustable | 10 years | Conventional | 5.875 |
            | TestNo34      | BLastName38   | 849          | CFirstName38    | BLastName38     | 521            | Multi-Family Unit | 33038   | 522500  | 104500  | 418000  |  Adjustable | 40 years | Conventional | 5.5   |
            | TestNo35      | BLastName39   | 760          | CFirstName39    | BLastName39     | 521            | Townhouse         | 33039   | 529112  | 111113  | 417999  |  Fixed      | 10 years | Conventional | 7     |
            | TestNo36      | BLastName40   | 849          | CFirstName40    | BLastName40     | 850            | Condominium       | 33040   | 63291   | 13291   | 50000   |  Fixed      | 40 years | Conventional | 6.875 |
            | TestNo37      | BLastName41   | 699          | CFirstName41    | BLastName41     | 849            | Multi-Family Unit | 33041   | 63292   | 13291   | 50001   |  Adjustable | 40 years | Conventional | 5.625 |
            | TestNo38      | BLastName42   | 660          | CFirstName42    | BLastName42     | 521            | Multi-Family Unit | 33042   | 1250000 | 250000  | 1000000 |  Adjustable | 30 years | Conventional | 5.875 |
            | TestNo39      | BLastName43   | 661          | CFirstName43    | BLastName43     | 520            | Condominium       | 33043   | 63292   | 13291   | 50001   |  Fixed      | 30 years | Conventional | 7.375 |
            | TestNo40      | BLastName44   | 761          | CFirstName44    | BLastName44     | 621            | Multi-Family Unit | 33044   | 63292   | 13291   | 50001   |  Adjustable | 10 years | Conventional | 5.375 |
            | TestNo41      | BLastName45   | 850          | CFirstName45    | BLastName45     | 620            | Townhouse         | 33045   | 62500   | 12500   | 50000   |  Adjustable | 30 years | Conventional | 5.375 |
            | TestNo42      | BLastName46   | 620          | CFirstName46    | BLastName46     | 619            | Condominium       | 33046   | 529112  | 111113  | 417999  |  Adjustable | 30 years | Conventional | 6.125 |
            | TestNo43      | BLastName47   | 639          | CFirstName47    | BLastName47     | 850            | Multi-Family Unit | 33047   | 63292   | 13291   | 50001   |  Fixed      | 30 years | Conventional | 7.5   |
            | TestNo44      | BLastName48   | 639          | CFirstName48    | BLastName48     | 849            | Condominium       | 33048   | 1265822 | 265822  | 1000000 |  Adjustable | 30 years | Conventional | 6     |
            | TestNo45      | BLastName49   | 699          | CFirstName49    | BLastName49     | 521            | Single Family     | 33049   | 522500  | 104500  | 418000  |  Adjustable | 30 years | Conventional | 5.75  |
            | TestNo46      | BLastName50   | 701          | CFirstName50    | BLastName50     | 850            | Multi-Family Unit | 33050   | 529112  | 111113  | 417999  |  Fixed      | 40 years | Conventional | 7     |
            | TestNo47      | BLastName51   | 760          | CFirstName51    | BLastName51     | 520            | Townhouse         | 33051   | 529115  | 111114  | 418001  |  Adjustable | 40 years | Conventional | 5.5   |
            | TestNo48      | BLastName52   | 640          | CFirstName52    | BLastName52     | 619            | Single Family     | 33052   | 1265822 | 265822  | 1000000 |  Fixed      | 40 years | Conventional | 7.5   |
            | TestNo49      | BLastName53   | 659          | CFirstName53    | BLastName53     | 619            | Condominium       | 33053   | 1265821 | 265822  | 999999  |  Adjustable | 15 years | Conventional | 6     |
            | TestNo50      | BLastName54   | 850          | CFirstName54    | BLastName54     | 521            | Townhouse         | 33054   | 63292   | 13291   | 50001   |  Adjustable | 15 years | Conventional | 5.5   |
