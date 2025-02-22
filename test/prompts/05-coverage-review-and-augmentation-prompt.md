# **Title:** Coverage Review & Augmentation

## **Overview:**

Prompt to review test coverage and augment the test cases generated.

* **Discipline:** Generate Test Cases
* **Task:** Review Test Cases
* **Goals:**
  * Review and Refine Test Cases
* **Task:** Test Coverage

---

## **Prompt Structure:**

"Review the initial draft of test assets generated for the `{{product_feature}}` feature of the `{{product_under_test}}`. Based on the provided context, error hypotheses, and feature requirements, identify any gaps or missing scenarios in the test suite. Consider whether all critical functional flows, edge cases, and risk areas have been adequately addressed, and if established test design techniques (such as pairwise testing or boundary analysis) have been applied.

For each gap identified, suggest one or two additional BDD test cases in the Given/When/Then format, along with any modifications to the test data or oracle instructions as needed. Also, recommend any improvements to ensure comprehensive coverage and proper risk prioritization."

Example:
"Review the initial test suite for the Loan Application feature of the Greenacre Loan Application. If the current test cases do not fully address boundary values for the Borrower FICO score, provide an additional test case such as:

* Given a Borrower FICO score of 299 (below the valid range), when the application is submitted, then the system should reject the application with an appropriate error message.

Similarly, identify any missing combinatorial scenarios or exploratory charters and suggest additions to ensure comprehensive coverage and prioritized risk management."

---

## **Parameters:**

| **Parameter Name**       | **Description**                                  | **Type** | **Example Values**                   |
|--------------------------|--------------------------------------------------|----------|--------------------------------------|
| `{{product_feature}}`    | The name of the feature (usually the Epic Title) | Text     | "Loan Application Processing"        |
| `{{product_under_test}}` | The name of the product under test               | Text     | "the Greenacre Loan Application app" |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* Describer test techniques and how to do them.
* Give the model the information it needs for the level of comprehensiveness required.
