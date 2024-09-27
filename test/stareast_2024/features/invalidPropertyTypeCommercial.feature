Feature: Borrower denied loan for commercial property type

    Scenario Outline: User is denied for commercial properties
        Given the Greenacre home page is displayed
        When a borrower enters borrower information of "<borrowerFName>", "<borrowerLName>", and "<borrowerFico>"
        And a borrower enters coborrower information of "<coborrowerFName>", "<coborrowerLName>", and "<coborrowerFico>"
        And a borrower enters purchase information of "<propertyType>", "<zipCode>", "<price>", and "<downPmt>"
        And a borrower enters loan information of "<loanAmt>", "<loanType>", and "<period>"
        And a borrower submits the application for approval
        Then the loan is denied

        # title-format: Denial Commercial Property - <borrowerFName>
        Examples:
            | borrowerFName | borrowerLName | borrowerFico | coborrowerFName | coborrowerLName | coborrowerFico | propertyType | zipCode | price   | downPmt | loanAmt  | loanType    | period   |
            | TestNo01      | BLastName01   | 639          | CFirstName01    | BLastName01     | 300            | Commercial   | 33001   | 61729   | 11728   |  50001   |  Adjustable | 40 years |
            | TestNo02      | BLastName02   | 699          | CFirstName02    | BLastName02     | 521            | Commercial   | 33002   | 1249998 | 249999  |  999999  |  Fixed      | 40 years |
            | TestNo03      | BLastName03   | 679          | CFirstName03    | BLastName03     | 301            | Commercial   | 33003   | 522501  | 104500  |  418001  |  Adjustable | 15 years |
            | TestNo04      | BLastName04   | 760          | CFirstName04    | BLastName04     | 850            | Commercial   | 33004   | 1265821 | 265822  |  999999  |  Fixed      | 10 years |
            | TestNo05      | BLastName05   | 619          | CFirstName05    | BLastName05     | 849            | Commercial   | 33005   | 62500   | 12500   |  50000   |  Fixed      | 30 years |
            | TestNo06      | BLastName06   | 661          | CFirstName06    | BLastName06     | 621            | Commercial   | 33006   | 529112  | 111113  |  417999  |  Fixed      | 30 years |
            | TestNo07      | BLastName07   | 660          | CFirstName07    | BLastName07     | 421            | Commercial   | 33007   | 529113  | 111113  |  418000  |  Fixed      | 40 years |
            | TestNo08      | BLastName08   | 621          | CFirstName08    | BLastName08     | 520            | Commercial   | 33008   | 1234567 | 234567  |  1000000 |  Adjustable | 15 years |
            | TestNo09      | BLastName09   | 680          | CFirstName09    | BLastName09     | 321            | Commercial   | 33009   | 1250000 | 250000  |  1000000 |  Adjustable | 10 years |
            | TestNo10      | BLastName10   | 681          | CFirstName10    | BLastName10     | 320            | Commercial   | 33010   | 62501   | 12500   |  50001   |  Fixed      | 30 years |
            | TestNo11      | BLastName11   | 760          | CFirstName11    | BLastName11     | 620            | Commercial   | 33011   | 516048  | 98049   |  417999  |  Fixed      | 30 years |
            | TestNo12      | BLastName12   | 300          | CFirstName12    | BLastName12     | 319            | Commercial   | 33012   | 529115  | 111114  |  418001  |  Fixed      | 40 years |
            | TestNo13      | BLastName13   | 641          | CFirstName13    | BLastName13     | 419            | Commercial   | 33013   | 1265822 | 265822  |  1000000 |  Adjustable | 15 years |
            | TestNo14      | BLastName14   | 759          | CFirstName14    | BLastName14     | 300            | Commercial   | 33014   | 529112  | 111113  |  417999  |  Adjustable | 40 years |
            | TestNo15      | BLastName15   | 659          | CFirstName15    | BLastName15     | 621            | Commercial   | 33015   | 529113  | 111113  |  418000  |  Adjustable | 40 years |
            | TestNo16      | BLastName16   | 761          | CFirstName16    | BLastName16     | 321            | Commercial   | 33016   | 62501   | 12500   |  50001   |  Adjustable | 40 years |
            | TestNo17      | BLastName17   | 640          | CFirstName17    | BLastName17     | 419            | Commercial   | 33017   | 1249998 | 249999  |  999999  |  Adjustable | 15 years |
            | TestNo18      | BLastName18   | 301          | CFirstName18    | BLastName18     | 419            | Commercial   | 33018   | 516050  | 98049   |  418001  |  Adjustable | 10 years |
            | TestNo19      | BLastName19   | 699          | CFirstName19    | BLastName19     | 0              | Commercial   | 33019   | 522501  | 104500  |  418001  |  Fixed      | 30 years |
            | TestNo20      | BLastName20   | 761          | CFirstName20    | BLastName20     | 619            | Commercial   | 33020   | 1265821 | 265822  |  999999  |  Fixed      | 30 years |
            | TestNo21      | BLastName21   | 760          | CFirstName21    | BLastName21     | 420            | Commercial   | 33021   | 516049  | 98049   |  418000  |  Adjustable | 30 years |
            | TestNo22      | BLastName22   | 701          | CFirstName22    | BLastName22     | 619            | Commercial   | 33022   | 1234567 | 234567  |  1000000 |  Fixed      | 30 years |
            | TestNo23      | BLastName23   | 680          | CFirstName23    | BLastName23     | 620            | Commercial   | 33023   | 62501   | 12500   |  50001   |  Adjustable | 30 years |
            | TestNo24      | BLastName24   | 850          | CFirstName24    | BLastName24     | 849            | Commercial   | 33024   | 529112  | 111113  |  417999  |  Adjustable | 15 years |
            | TestNo25      | BLastName25   | 761          | CFirstName25    | BLastName25     | 849            | Commercial   | 33025   | 516049  | 98049   |  418000  |  Adjustable | 15 years |
            | TestNo26      | BLastName26   | 699          | CFirstName26    | BLastName26     | 519            | Commercial   | 33026   | 516048  | 98049   |  417999  |  Adjustable | 15 years |
            | TestNo27      | BLastName27   | 620          | CFirstName27    | BLastName27     | 420            | Commercial   | 33027   | 1250000 | 250000  |  1000000 |  Adjustable | 30 years |
            | TestNo28      | BLastName28   | 761          | CFirstName28    | BLastName28     | 300            | Commercial   | 33028   | 516050  | 98049   |  418001  |  Adjustable | 40 years |
            | TestNo29      | BLastName29   | 849          | CFirstName29    | BLastName29     | 521            | Commercial   | 33029   | 62501   | 12500   |  50001   |  Adjustable | 10 years |
            | TestNo30      | BLastName30   | 640          | CFirstName30    | BLastName30     | 0              | Commercial   | 33030   | 516048  | 98049   |  417999  |  Adjustable | 10 years |
            | TestNo31      | BLastName31   | 661          | CFirstName31    | BLastName31     | 0              | Commercial   | 33031   | 522500  | 104500  |  418000  |  Adjustable | 40 years |
            | TestNo32      | BLastName32   | 701          | CFirstName32    | BLastName32     | 0              | Commercial   | 33032   | 62500   | 12500   |  50000   |  Fixed      | 40 years |
            | TestNo33      | BLastName33   | 619          | CFirstName33    | BLastName33     | 420            | Commercial   | 33033   | 1234567 | 234567  |  1000000 |  Adjustable | 30 years |
            | TestNo34      | BLastName34   | 850          | CFirstName34    | BLastName34     | 420            | Commercial   | 33034   | 62500   | 12500   |  50000   |  Fixed      | 40 years |
            | TestNo35      | BLastName35   | 700          | CFirstName35    | BLastName35     | 620            | Commercial   | 33035   | 522498  | 104499  |  417999  |  Fixed      | 40 years |
            | TestNo36      | BLastName36   | 681          | CFirstName36    | BLastName36     | 521            | Commercial   | 33036   | 516048  | 98049   |  417999  |  Adjustable | 10 years |
            | TestNo37      | BLastName37   | 699          | CFirstName37    | BLastName37     | 520            | Commercial   | 33037   | 1265822 | 265822  |  1000000 |  Fixed      | 15 years |
            | TestNo38      | BLastName38   | 849          | CFirstName38    | BLastName38     | 420            | Commercial   | 33038   | 63291   | 13291   |  50000   |  Fixed      | 30 years |
            | TestNo39      | BLastName39   | 661          | CFirstName39    | BLastName39     | 321            | Commercial   | 33039   | 529112  | 111113  |  417999  |  Fixed      | 40 years |
            | TestNo40      | BLastName40   | 621          | CFirstName40    | BLastName40     | 521            | Commercial   | 33040   | 516048  | 98049   |  417999  |  Fixed      | 40 years |
            | TestNo41      | BLastName41   | 701          | CFirstName41    | BLastName41     | 520            | Commercial   | 33041   | 63291   | 13291   |  50000   |  Fixed      | 40 years |
            | TestNo42      | BLastName42   | 640          | CFirstName42    | BLastName42     | 850            | Commercial   | 33042   | 516050  | 98049   |  418001  |  Adjustable | 30 years |
            | TestNo43      | BLastName43   | 621          | CFirstName43    | BLastName43     | 321            | Commercial   | 33043   | 516048  | 98049   |  417999  |  Adjustable | 15 years |
            | TestNo44      | BLastName44   | 301          | CFirstName44    | BLastName44     | 619            | Commercial   | 33044   | 62500   | 12500   |  50000   |  Adjustable | 10 years |
            | TestNo45      | BLastName45   | 680          | CFirstName45    | BLastName45     | 849            | Commercial   | 33045   | 1234566 | 234567  |  999999  |  Adjustable | 10 years |
            | TestNo46      | BLastName46   | 700          | CFirstName46    | BLastName46     | 319            | Commercial   | 33046   | 61729   | 11728   |  50001   |  Adjustable | 15 years |
            | TestNo47      | BLastName47   | 679          | CFirstName47    | BLastName47     | 421            | Commercial   | 33047   | 63291   | 13291   |  50000   |  Fixed      | 10 years |
            | TestNo48      | BLastName48   | 640          | CFirstName48    | BLastName48     | 621            | Commercial   | 33048   | 516048  | 98049   |  417999  |  Fixed      | 15 years |
            | TestNo49      | BLastName49   | 760          | CFirstName49    | BLastName49     | 621            | Commercial   | 33049   | 516049  | 98049   |  418000  |  Adjustable | 10 years |
            | TestNo50      | BLastName50   | 659          | CFirstName50    | BLastName50     | 421            | Commercial   | 33050   | 1234566 | 234567  |  999999  |  Adjustable | 10 years |
            | TestNo51      | BLastName51   | 660          | CFirstName51    | BLastName51     | 420            | Commercial   | 33051   | 516050  | 98049   |  418001  |  Adjustable | 30 years |
            | TestNo52      | BLastName52   | 660          | CFirstName52    | BLastName52     | 319            | Commercial   | 33052   | 1250000 | 250000  |  1000000 |  Adjustable | 30 years |
            | TestNo53      | BLastName53   | 700          | CFirstName53    | BLastName53     | 520            | Commercial   | 33053   | 516048  | 98049   |  417999  |  Adjustable | 10 years |
            | TestNo54      | BLastName54   | 760          | CFirstName54    | BLastName54     | 849            | Commercial   | 33054   | 516049  | 98049   |  418000  |  Fixed      | 10 years |
            | TestNo55      | BLastName55   | 300          | CFirstName55    | BLastName55     | 520            | Commercial   | 33055   | 1234567 | 234567  |  1000000 |  Adjustable | 10 years |
            | TestNo56      | BLastName56   | 850          | CFirstName56    | BLastName56     | 0              | Commercial   | 33056   | 529113  | 111113  |  418000  |  Fixed      | 15 years |
            | TestNo57      | BLastName57   | 700          | CFirstName57    | BLastName57     | 301            | Commercial   | 33057   | 522498  | 104499  |  417999  |  Adjustable | 30 years |
            | TestNo58      | BLastName58   | 849          | CFirstName58    | BLastName58     | 619            | Commercial   | 33058   | 63292   | 13291   |  50001   |  Adjustable | 40 years |
            | TestNo59      | BLastName59   | 620          | CFirstName59    | BLastName59     | 319            | Commercial   | 33059   | 1265822 | 265822  |  1000000 |  Fixed      | 30 years |
            | TestNo60      | BLastName60   | 759          | CFirstName60    | BLastName60     | 320            | Commercial   | 33060   | 63291   | 13291   |  50000   |  Adjustable | 15 years |
            | TestNo61      | BLastName61   | 700          | CFirstName61    | BLastName61     | 0              | Commercial   | 33061   | 1265822 | 265822  |  1000000 |  Fixed      | 10 years |
            | TestNo62      | BLastName62   | 659          | CFirstName62    | BLastName62     | 521            | Commercial   | 33062   | 61728   | 11728   |  50000   |  Adjustable | 10 years |
            | TestNo63      | BLastName63   | 620          | CFirstName63    | BLastName63     | 300            | Commercial   | 33063   | 529115  | 111114  |  418001  |  Adjustable | 30 years |
            | TestNo64      | BLastName64   | 620          | CFirstName64    | BLastName64     | 621            | Commercial   | 33064   | 1249998 | 249999  |  999999  |  Adjustable | 40 years |
            | TestNo65      | BLastName65   | 759          | CFirstName65    | BLastName65     | 849            | Commercial   | 33065   | 63292   | 13291   |  50001   |  Adjustable | 15 years |
