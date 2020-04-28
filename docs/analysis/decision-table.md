# Decision Table #

The values selected in this table were based upon:
1. Domain Analysis
2. Fault Modeling
    * Rules-based, leading to the use of a Decision Table
    * Behavioral models that point to partitioning:
      * Equivalence Classes
      * Boundary Value Analysis

This is an incomplete Decision Table. An actual, complete table would contain variants (or rules) for each combination of values, but in this case that would result in a table with 513,000 variants. Instead, it is used here to analyze the data so that it can be put into an input file for a pairwise utility (PICT).

| Conditions | Values | Rules |
| :--- | :--- | :---: |
Borrower FICO | None, 299, 300, 301, 619, 620, 621, 639, 640, 641, 659, 660, 661, 679, 680, 681, 699, 700, 701, 759, 760, 761, 849, 850, 851 | ... |
Co-Borrower FICO | None, 299, 300, 301, 619, 620, 621, 639, 640, 641, 659, 660, 661, 679, 680, 681, 699, 700, 701, 759, 760, 761, 849, 850, 851 | ... |
Property Type | SFR, Condo, Townhouse, Multi-Family, Commercial | ... |
LTV | 79%, 80%, 81%, 101% | ... |
Loan Amount | $49,999, $50,000, $50,001, $417,999, $418,000, $418,001, $999,999, $1,000,000, $1,000,001 | ... |
Loan Type | Fixed, Adjustable | ... |
Loan Period | 10, 15, 30, 40 | ... |

After applying a pairwise algorithm to the input data and getting a smaller data set - 639 test cases here - the data could be brought back into the Decision Table as variants, with a much more manageable test set. This may make sense if the tests are going to be executed manually, without further specifying the individual steps. Using automation, the data should be formatted in a way to be consumed by those tests.
