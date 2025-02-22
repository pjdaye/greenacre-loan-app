# **Title:** Initial Test Case Generation

## **Overview:**

Prompt to create test cases and/or test data for use in covering a product feature with the appropriate tests.

* **Discipline:** Generate Test Cases
* **Task:** Define Format
* **Goals:**
  * Define Test Inputs
  * Define Test Case Output

---

## **Prompt Structure:**

"Using the provided context, error hypotheses, and detailed feature requirements & acceptance criteria, generate an initial draft of test assets for the `{{product_feature}}` feature of the `{{product_under_test}}`. Your output should include the following sections:

1. **BDD Gherkin Test Cases:** Generate 3–5 test cases covering key scenarios—including valid flows, edge cases, and error conditions—in the Given/When/Then format. Ensure these cases reference test design techniques where applicable.

2. **Test Data Generation Instructions:** Outline a process for selecting or generating test data inputs. Include techniques such as equivalence partitioning, boundary value analysis, and pairwise combinatorial testing. Mention any constraints or assumptions that guide the data selection.

3. **Oracle for Expected Results:** Describe a mechanism (e.g., a script outline or logical rules) that determines the expected outcomes for each test case.

4. **Exploratory Testing Charter:** Provide 2–3 exploratory testing charters focused on areas where manual investigation may uncover additional risks or gaps in automated testing.

Focus on creating a concise yet comprehensive draft that covers the core functional areas and identified risks."

Example:
"Using the provided context, error hypotheses, and detailed feature requirements & acceptance criteria, generate an initial draft of test assets for the Loan Application feature of the Greenacre Loan Application. Your output should include the following sections:

1. **BDD Gherkin Test Cases:** For example:
    * Given valid input data for a conventional loan, when the applicant submits the application, then the system should approve the loan with the appropriate loan program.
    * Given an invalid Borrower FICO score (e.g., 299), when the applicant submits the application, then the system should reject the application with an error message.

2. **Test Data Generation Instructions:** Outline how to select or generate test data using techniques such as equivalence partitioning and boundary value analysis. For instance, describe creating input sets for Borrower FICO scores, Loan Amounts, and LTV percentages, including constraints (e.g., FICO between 300 and 850).

3. **Oracle for Expected Results:** Describe an approach—for example, a Python script—that accepts key inputs (FICO score, Loan Amount, etc.) and outputs the expected Loan Approval, Loan Program, and Interest Rate.

4. **Exploratory Testing Charter:** Provide charters like:
    * "Explore the application's behavior when receiving unexpected data formats to uncover input validation issues."
    * "Investigate the UI response when multiple error conditions occur simultaneously.""

---

## **Parameters:**

| **Parameter Name**             | **Description**                                    | **Type** | **Example Values**                                                        |
|--------------------------------|----------------------------------------------------|----------|---------------------------------------------------------------------------|
| `{{product_feature}}`          | The name of the feature (usually the Epic Title)   | Text     | "Loan Application Processing"                                             |
| `{{product_under_test}}`       | The name of the product under test                 | Text     | "the Greenacre Loan Application app"                                      |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* Describer test techniques and how to do them.
* Give the model the information it needs for the level of comprehensiveness required.
