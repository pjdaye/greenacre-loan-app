# Test Design Analysis and Workflow #

As presented in "Optimizing Test Case Design with Domain Analysis," which was delivered to the Testingmind Test Automation & Digital QA Summit 2020 conference on April 29, 2020, the following workflow was used for designing tests to exercise the Greenacre Loan Application app.

![Test Design Workflow](../images/test-design-workflow.png)

1. Domain Analysis
   * Requirements: The input into the process
   * Decision Table: Good for rules-based systems
   * Risk Analysis: Prioritize testing based on high-risk features
2. Models
   * Fault Models: Knowledge of how programs can fail informs selection of test design techniques
3. Test Design Techniques
   * Equivalence Class Paritioning: Takes advantage of partitioning the input Domain for items that are processed in the same way
   * Boundary Value Analysis: Defects often are found at the edges of spaces (input and output)
   * Reduced Decision Table: Applying the Equivalence Classes and the Boundaries to the original Decision Table to reduce the number of test cases needed
   * test_factors.txt: Taking the data from the reduced decision table to create a file to feed to a utility to create a pairwise test set
   * PICT (Pairwise Independent Combinatorial Tool): A tool for generating pairwise (and other n-wise) test sets
   * input_data.csv: The output from PICT will be used as input for a utility building the actual test input data
   * input_builder.py: A utility, written in Python, to take the pairwised test cases and process them through an oracle to create a data input file for test execution
   * rules_engine_oracle.py: A utility, written in Python, that takes test loan data and analyzes how it should be processed by the application under test (AUT)
   * test_data.csv: The final data file used for test execution

A state-transition diagram was prepared while analyzing the domain of the AUT, but it was determined that this wasn't a rich enough model to use for test design.

![State-Transition Diagram](../images/state-transition-diagram.png)

## References ##

The following tools were used:

* **Excel**: For the decision tables and the risk analysis
* **Visual Studio Code (VS Code)**: For working with text, CSV, and Python files
* **[PICT](https://github.com/Microsoft/pict)**: For generating pairwise test sets
  * Links to other pairwise tools can be found at [Pairwise.org](http://pairwise.org)
