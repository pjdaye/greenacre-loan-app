Feature: Borrower denied loan for invalid loan amount

    Scenario Outline: User is denied for invalid loan amount
        Given the Greenacre home page is displayed
        When a borrower enters borrower information of "<borrowerFName>", "<borrowerLName>", and "<borrowerFico>"
        And a borrower enters coborrower information of "<coborrowerFName>", "<coborrowerLName>", and "<coborrowerFico>"
        And a borrower enters purchase information of "<propertyType>", "<zipCode>", "<price>", and "<downPmt>"
        And a borrower enters loan information of "<loanAmt>", "<loanType>", and "<period>"
        And a borrower submits the application for approval
        Then the loan is denied

        # title-format: Denial Loan Amount Invalid - <borrowerFName>
        Examples:
            | borrowerFName | borrowerLName | borrowerFico | coborrowerFName | coborrowerLName | coborrowerFico | propertyType      | zipCode | price   | downPmt | loanAmt | loanType   | period   |
            | TestNo001     | BLastName001  | 639          | CFirstName001   | BLastName001    | 621            | Multi-Family Unit | 33001   | 1250001 | 250000  | 1000001 | Fixed      | 10 years |
            | TestNo002     | BLastName002  | 620          | CFirstName002   | BLastName002    | 301            | Single Family     | 33002   | 63289   | 13290   | 49999   | Adjustable | 40 years |
            | TestNo003     | BLastName003  | 679          | CFirstName003   | BLastName003    | 319            | Single Family     | 33003   | 61727   | 11728   | 49999   | Fixed      | 30 years |
            | TestNo004     | BLastName004  | 761          | CFirstName004   | BLastName004    | 519            | Townhouse         | 33004   | 1265824 | 265823  | 1000001 | Adjustable | 10 years |
            | TestNo005     | BLastName005  | 661          | CFirstName005   | BLastName005    | 850            | Condominium       | 33005   | 1234569 | 234568  | 1000001 | Fixed      | 40 years |
            | TestNo006     | BLastName006  | 680          | CFirstName006   | BLastName006    | 300            | Multi-Family Unit | 33006   | 63289   | 13290   | 49999   | Fixed      | 15 years |
            | TestNo007     | BLastName007  | 621          | CFirstName007   | BLastName007    | 850            | Townhouse         | 33007   | 62498   | 12499   | 49999   | Adjustable | 30 years |
            | TestNo008     | BLastName008  | 300          | CFirstName008   | BLastName008    | 849            | Single Family     | 33008   | 1234569 | 234568  | 1000001 | Fixed      | 15 years |
            | TestNo009     | BLastName009  | 760          | CFirstName009   | BLastName009    | 421            | Townhouse         | 33009   | 1234569 | 234568  | 1000001 | Adjustable | 30 years |
            | TestNo010     | BLastName010  | 759          | CFirstName010   | BLastName010    | 420            | Condominium       | 33010   | 61727   | 11728   | 49999   | Adjustable | 10 years |
            | TestNo011     | BLastName011  | 849          | CFirstName011   | BLastName011    | 620            | Townhouse         | 33011   | 63289   | 13290   | 49999   | Adjustable | 15 years |
            | TestNo012     | BLastName012  | 301          | CFirstName012   | BLastName012    | 621            | Townhouse         | 33012   | 63289   | 13290   | 49999   | Adjustable | 15 years |
            | TestNo013     | BLastName013  | 850          | CFirstName013   | BLastName013    | 521            | Single Family     | 33013   | 1265824 | 265823  | 1000001 | Adjustable | 10 years |
            | TestNo014     | BLastName014  | 850          | CFirstName014   | BLastName014    | 520            | Multi-Family Unit | 33014   | 61727   | 11728   | 49999   | Fixed      | 30 years |
            | TestNo015     | BLastName015  | 699          | CFirstName015   | BLastName015    | 321            | Condominium       | 33015   | 1265824 | 265823  | 1000001 | Fixed      | 10 years |
            | TestNo016     | BLastName016  | 759          | CFirstName016   | BLastName016    | 301            | Multi-Family Unit | 33016   | 1234569 | 234568  | 1000001 | Fixed      | 40 years |
            | TestNo017     | BLastName017  | 619          | CFirstName017   | BLastName017    |                | Single Family     | 33017   | 63289   | 13290   | 49999   | Fixed      | 15 years |
            | TestNo018     | BLastName018  | 659          | CFirstName018   | BLastName018    | 620            | Multi-Family Unit | 33018   | 1234569 | 234568  | 1000001 | Fixed      | 10 years |
            | TestNo019     | BLastName019  | 701          | CFirstName019   | BLastName019    | 419            | Single Family     | 33019   | 61727   | 11728   | 49999   | Fixed      | 15 years |
            | TestNo020     | BLastName020  | 681          | CFirstName020   | BLastName020    | 319            | Condominium       | 33020   | 1250001 | 250000  | 1000001 | Adjustable | 15 years |
            | TestNo021     | BLastName021  | 700          | CFirstName021   | BLastName021    | 419            | Townhouse         | 33021   | 1265824 | 265823  | 1000001 | Fixed      | 40 years |
            | TestNo022     | BLastName022  | 760          | CFirstName022   | BLastName022    | 619            | Multi-Family Unit | 33022   | 61727   | 11728   | 49999   | Adjustable | 30 years |
            | TestNo023     | BLastName023  | 660          | CFirstName023   | BLastName023    | 300            | Single Family     | 33023   | 1265824 | 265823  | 1000001 | Adjustable | 40 years |
            | TestNo024     | BLastName024  | 680          | CFirstName024   | BLastName024    | 619            | Townhouse         | 33024   | 1234569 | 234568  | 1000001 | Adjustable | 40 years |
            | TestNo025     | BLastName025  | 700          | CFirstName025   | BLastName025    | 421            | Multi-Family Unit | 33025   | 61727   | 11728   | 49999   | Adjustable | 30 years |
            | TestNo026     | BLastName026  | 761          | CFirstName026   | BLastName026    | 521            | Multi-Family Unit | 33026   | 62498   | 12499   | 49999   | Fixed      | 15 years |
            | TestNo027     | BLastName027  | 761          | CFirstName027   | BLastName027    |                | Condominium       | 33027   | 1265824 | 265823  | 1000001 | Fixed      | 15 years |
            | TestNo028     | BLastName028  | 660          | CFirstName028   | BLastName028    |                | Multi-Family Unit | 33028   | 61727   | 11728   | 49999   | Adjustable | 30 years |
            | TestNo029     | BLastName029  | 640          | CFirstName029   | BLastName029    | 319            | Multi-Family Unit | 33029   | 62498   | 12499   | 49999   | Adjustable | 10 years |
            | TestNo030     | BLastName030  | 661          | CFirstName030   | BLastName030    | 419            | Single Family     | 33030   | 61727   | 11728   | 49999   | Adjustable | 30 years |
            | TestNo031     | BLastName031  | 660          | CFirstName031   | BLastName031    | 519            | Townhouse         | 33031   | 63289   | 13290   | 49999   | Adjustable | 10 years |
            | TestNo032     | BLastName032  | 699          | CFirstName032   | BLastName032    | 850            | Multi-Family Unit | 33032   | 63289   | 13290   | 49999   | Adjustable | 15 years |
            | TestNo033     | BLastName033  | 681          | CFirstName033   | BLastName033    | 520            | Single Family     | 33033   | 61727   | 11728   | 49999   | Adjustable | 30 years |
            | TestNo034     | BLastName034  | 849          | CFirstName034   | BLastName034    | 849            | Condominium       | 33034   | 1250001 | 250000  | 1000001 | Adjustable | 40 years |
            | TestNo035     | BLastName035  | 640          | CFirstName035   | BLastName035    | 521            | Single Family     | 33035   | 1234569 | 234568  | 1000001 | Adjustable | 30 years |
            | TestNo036     | BLastName036  | 621          | CFirstName036   | BLastName036    | 849            | Single Family     | 33036   | 1265824 | 265823  | 1000001 | Fixed      | 10 years |
            | TestNo037     | BLastName037  | 660          | CFirstName037   | BLastName037    | 321            | Multi-Family Unit | 33037   | 63289   | 13290   | 49999   | Adjustable | 30 years |
            | TestNo038     | BLastName038  | 759          | CFirstName038   | BLastName038    | 621            | Condominium       | 33038   | 1234569 | 234568  | 1000001 | Fixed      | 15 years |
            | TestNo039     | BLastName039  | 639          | CFirstName039   | BLastName039    | 301            | Multi-Family Unit | 33039   | 61727   | 11728   | 49999   | Adjustable | 10 years |
            | TestNo040     | BLastName040  | 639          | CFirstName040   | BLastName040    | 849            | Multi-Family Unit | 33040   | 61727   | 11728   | 49999   | Adjustable | 10 years |
            | TestNo041     | BLastName041  | 761          | CFirstName041   | BLastName041    | 420            | Townhouse         | 33041   | 1265824 | 265823  | 1000001 | Adjustable | 10 years |
            | TestNo042     | BLastName042  | 659          | CFirstName042   | BLastName042    | 420            | Condominium       | 33042   | 62498   | 12499   | 49999   | Adjustable | 10 years |
            | TestNo043     | BLastName043  | 619          | CFirstName043   | BLastName043    | 319            | Condominium       | 33043   | 1250001 | 250000  | 1000001 | Adjustable | 15 years |
            | TestNo044     | BLastName044  | 620          | CFirstName044   | BLastName044    | 521            | Condominium       | 33044   | 1234569 | 234568  | 1000001 | Fixed      | 10 years |
            | TestNo045     | BLastName045  | 300          | CFirstName045   | BLastName045    | 621            | Multi-Family Unit | 33045   | 62498   | 12499   | 49999   | Fixed      | 15 years |
            | TestNo046     | BLastName046  | 641          | CFirstName046   | BLastName046    | 620            | Single Family     | 33046   | 1250001 | 250000  | 1000001 | Fixed      | 10 years |
            | TestNo047     | BLastName047  | 679          | CFirstName047   | BLastName047    | 520            | Townhouse         | 33047   | 1265824 | 265823  | 1000001 | Fixed      | 30 years |
            | TestNo048     | BLastName048  | 641          | CFirstName048   | BLastName048    | 301            | Townhouse         | 33048   | 63289   | 13290   | 49999   | Fixed      | 15 years |
            | TestNo049     | BLastName049  | 679          | CFirstName049   | BLastName049    | 320            | Single Family     | 33049   | 1265824 | 265823  | 1000001 | Fixed      | 40 years |
            | TestNo050     | BLastName050  | 701          | CFirstName050   | BLastName050    | 621            | Single Family     | 33050   | 1234569 | 234568  | 1000001 | Adjustable | 40 years |
            | TestNo051     | BLastName051  | 641          | CFirstName051   | BLastName051    | 320            | Townhouse         | 33051   | 62498   | 12499   | 49999   | Fixed      | 40 years |
            | TestNo052     | BLastName052  | 639          | CFirstName052   | BLastName052    | 421            | Multi-Family Unit | 33052   | 1250001 | 250000  | 1000001 | Adjustable | 15 years |
            | TestNo053     | BLastName053  | 661          | CFirstName053   | BLastName053    | 319            | Multi-Family Unit | 33053   | 1250001 | 250000  | 1000001 | Fixed      | 40 years |
            | TestNo054     | BLastName054  | 850          | CFirstName054   | BLastName054    | 619            | Multi-Family Unit | 33054   | 1250001 | 250000  | 1000001 | Fixed      | 30 years |
            | TestNo055     | BLastName055  | 639          | CFirstName055   | BLastName055    | 419            | Condominium       | 33055   | 61727   | 11728   | 49999   | Adjustable | 10 years |
            | TestNo056     | BLastName056  | 300          | CFirstName056   | BLastName056    | 420            | Multi-Family Unit | 33056   | 61727   | 11728   | 49999   | Adjustable | 15 years |
            | TestNo057     | BLastName057  | 680          | CFirstName057   | BLastName057    | 850            | Condominium       | 33057   | 1265824 | 265823  | 1000001 | Adjustable | 15 years |
            | TestNo058     | BLastName058  | 681          | CFirstName058   | BLastName058    | 621            | Multi-Family Unit | 33058   | 1250001 | 250000  | 1000001 | Fixed      | 10 years |
            | TestNo059     | BLastName059  | 659          | CFirstName059   | BLastName059    | 849            | Multi-Family Unit | 33059   | 1265824 | 265823  | 1000001 | Fixed      | 40 years |
            | TestNo060     | BLastName060  | 619          | CFirstName060   | BLastName060    | 520            | Single Family     | 33060   | 63289   | 13290   | 49999   | Adjustable | 10 years |
            | TestNo061     | BLastName061  | 761          | CFirstName061   | BLastName061    | 621            | Townhouse         | 33061   | 63289   | 13290   | 49999   | Adjustable | 40 years |
            | TestNo062     | BLastName062  | 619          | CFirstName062   | BLastName062    | 320            | Townhouse         | 33062   | 1265824 | 265823  | 1000001 | Fixed      | 40 years |
            | TestNo063     | BLastName063  | 301          | CFirstName063   | BLastName063    | 320            | Multi-Family Unit | 33063   | 1250001 | 250000  | 1000001 | Adjustable | 30 years |
            | TestNo064     | BLastName064  | 640          | CFirstName064   | BLastName064    | 520            | Condominium       | 33064   | 61727   | 11728   | 49999   | Fixed      | 30 years |
            | TestNo065     | BLastName065  | 641          | CFirstName065   | BLastName065    | 421            | Townhouse         | 33065   | 1250001 | 250000  | 1000001 | Adjustable | 15 years |
            | TestNo066     | BLastName066  | 301          | CFirstName066   | BLastName066    | 421            | Single Family     | 33066   | 61727   | 11728   | 49999   | Adjustable | 10 years |
            | TestNo067     | BLastName067  | 681          | CFirstName067   | BLastName067    | 420            | Condominium       | 33067   | 61727   | 11728   | 49999   | Adjustable | 10 years |
            | TestNo068     | BLastName068  | 659          | CFirstName068   | BLastName068    | 321            | Multi-Family Unit | 33068   | 1250001 | 250000  | 1000001 | Fixed      | 30 years |
            | TestNo069     | BLastName069  | 639          | CFirstName069   | BLastName069    | 520            | Condominium       | 33069   | 1265824 | 265823  | 1000001 | Fixed      | 30 years |
            | TestNo070     | BLastName070  | 701          | CFirstName070   | BLastName070    | 321            | Condominium       | 33070   | 61727   | 11728   | 49999   | Fixed      | 40 years |
            | TestNo071     | BLastName071  | 850          | CFirstName071   | BLastName071    | 321            | Single Family     | 33071   | 61727   | 11728   | 49999   | Fixed      | 30 years |
            | TestNo072     | BLastName072  | 641          | CFirstName072   | BLastName072    | 300            | Single Family     | 33072   | 1250001 | 250000  | 1000001 | Adjustable | 10 years |
            | TestNo073     | BLastName073  | 659          | CFirstName073   | BLastName073    |                | Single Family     | 33073   | 63289   | 13290   | 49999   | Adjustable | 10 years |
            | TestNo074     | BLastName074  | 701          | CFirstName074   | BLastName074    | 420            | Multi-Family Unit | 33074   | 62498   | 12499   | 49999   | Fixed      | 10 years |
            | TestNo075     | BLastName075  | 700          | CFirstName075   | BLastName075    | 321            | Condominium       | 33075   | 1234569 | 234568  | 1000001 | Fixed      | 30 years |
            | TestNo076     | BLastName076  | 849          | CFirstName076   | BLastName076    | 519            | Townhouse         | 33076   | 61727   | 11728   | 49999   | Fixed      | 10 years |
            | TestNo077     | BLastName077  | 301          | CFirstName077   | BLastName077    | 301            | Single Family     | 33077   | 62498   | 12499   | 49999   | Fixed      | 10 years |
            | TestNo078     | BLastName078  | 641          | CFirstName078   | BLastName078    |                | Condominium       | 33078   | 62498   | 12499   | 49999   | Fixed      | 15 years |
            | TestNo079     | BLastName079  | 701          | CFirstName079   | BLastName079    | 320            | Single Family     | 33079   | 62498   | 12499   | 49999   | Fixed      | 15 years |
            | TestNo080     | BLastName080  | 699          | CFirstName080   | BLastName080    | 849            | Condominium       | 33080   | 1234569 | 234568  | 1000001 | Fixed      | 40 years |
            | TestNo081     | BLastName081  | 849          | CFirstName081   | BLastName081    | 621            | Townhouse         | 33081   | 61727   | 11728   | 49999   | Fixed      | 15 years |
            | TestNo082     | BLastName082  | 621          | CFirstName082   | BLastName082    |                | Multi-Family Unit | 33082   | 1250001 | 250000  | 1000001 | Fixed      | 15 years |
            | TestNo083     | BLastName083  | 681          | CFirstName083   | BLastName083    | 849            | Townhouse         | 33083   | 61727   | 11728   | 49999   | Adjustable | 10 years |
            | TestNo084     | BLastName084  | 301          | CFirstName084   | BLastName084    | 420            | Single Family     | 33084   | 62498   | 12499   | 49999   | Adjustable | 40 years |
            | TestNo085     | BLastName085  | 700          | CFirstName085   | BLastName085    | 420            | Single Family     | 33085   | 63289   | 13290   | 49999   | Adjustable | 30 years |
            | TestNo086     | BLastName086  | 640          | CFirstName086   | BLastName086    | 420            | Multi-Family Unit | 33086   | 1234569 | 234568  | 1000001 | Fixed      | 30 years |
            | TestNo087     | BLastName087  | 700          | CFirstName087   | BLastName087    | 850            | Townhouse         | 33087   | 62498   | 12499   | 49999   | Adjustable | 40 years |
            | TestNo088     | BLastName088  | 300          | CFirstName088   | BLastName088    | 620            | Condominium       | 33088   | 63289   | 13290   | 49999   | Fixed      | 10 years |
            | TestNo089     | BLastName089  | 621          | CFirstName089   | BLastName089    | 419            | Multi-Family Unit | 33089   | 1234569 | 234568  | 1000001 | Adjustable | 40 years |
            | TestNo090     | BLastName090  | 699          | CFirstName090   | BLastName090    | 301            | Townhouse         | 33090   | 62498   | 12499   | 49999   | Adjustable | 40 years |
            | TestNo091     | BLastName091  | 641          | CFirstName091   | BLastName091    | 849            | Multi-Family Unit | 33091   | 63289   | 13290   | 49999   | Adjustable | 15 years |
            | TestNo092     | BLastName092  | 701          | CFirstName092   | BLastName092    | 519            | Townhouse         | 33092   | 62498   | 12499   | 49999   | Fixed      | 30 years |
            | TestNo093     | BLastName093  | 619          | CFirstName093   | BLastName093    | 620            | Townhouse         | 33093   | 63289   | 13290   | 49999   | Fixed      | 40 years |
            | TestNo094     | BLastName094  | 620          | CFirstName094   | BLastName094    | 519            | Single Family     | 33094   | 62498   | 12499   | 49999   | Fixed      | 15 years |
            | TestNo095     | BLastName095  | 849          | CFirstName095   | BLastName095    | 320            | Condominium       | 33095   | 61727   | 11728   | 49999   | Adjustable | 15 years |
            | TestNo096     | BLastName096  | 301          | CFirstName096   | BLastName096    |                | Condominium       | 33096   | 1265824 | 265823  | 1000001 | Adjustable | 10 years |
            | TestNo097     | BLastName097  | 620          | CFirstName097   | BLastName097    | 850            | Multi-Family Unit | 33097   | 61727   | 11728   | 49999   | Adjustable | 40 years |
            | TestNo098     | BLastName098  | 660          | CFirstName098   | BLastName098    | 320            | Single Family     | 33098   | 61727   | 11728   | 49999   | Adjustable | 15 years |
            | TestNo099     | BLastName099  | 761          | CFirstName099   | BLastName099    | 520            | Multi-Family Unit | 33099   | 62498   | 12499   | 49999   | Fixed      | 15 years |
            | TestNo100     | BLastName100  | 641          | CFirstName100   | BLastName100    | 850            | Townhouse         | 33100   | 62498   | 12499   | 49999   | Fixed      | 15 years |
            | TestNo101     | BLastName101  | 620          | CFirstName101   | BLastName101    | 320            | Townhouse         | 33101   | 61727   | 11728   | 49999   | Fixed      | 10 years |
            | TestNo102     | BLastName102  | 761          | CFirstName102   | BLastName102    | 421            | Townhouse         | 33102   | 1250001 | 250000  | 1000001 | Adjustable | 15 years |
            | TestNo103     | BLastName103  | 659          | CFirstName103   | BLastName103    | 619            | Single Family     | 33103   | 61727   | 11728   | 49999   | Adjustable | 40 years |
            | TestNo104     | BLastName104  | 661          | CFirstName104   | BLastName104    | 519            | Condominium       | 33104   | 61727   | 11728   | 49999   | Fixed      | 15 years |
            | TestNo105     | BLastName105  | 640          | CFirstName105   | BLastName105    | 619            | Townhouse         | 33105   | 1234569 | 234568  | 1000001 | Adjustable | 10 years |
