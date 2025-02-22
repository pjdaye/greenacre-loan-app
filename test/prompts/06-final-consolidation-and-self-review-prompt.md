# **Title:** Final Consolidation and Self-Review

## **Overview:**

Prompt review of test cases for consitancy and efficacy.

* **Task:** Review Test Cases
* **Goals:**
  * Review and Refine Test Cases

---

## **Prompt Structure:**

"Consolidate the refined test assets for the `{{product_feature}}` feature of the `{{product_under_test}}` into a final, organized test suite. In this final step, perform a self-review to ensure that:

1. All key scenarios, edge cases, and risk areas have been addressed.
2. Test design techniques (such as equivalence partitioning, boundary value analysis, pairwise testing, and risk-based prioritization) are consistently applied.
3. The test cases are clear, concise, and written in proper BDD Gherkin format.

Additionally, suggest any further improvements or areas that might benefit from additional testing. Output the final consolidated test suite, ready for team review and integration into your CI/CD pipeline."

Example:
"Consolidate the refined test assets for the Loan Application feature of the Greenacre Loan Application into a final test suite. Verify that all functional flows, edge cases, and risk areas (such as invalid input ranges for FICO scores or inconsistencies in Loan Amount constraints) have been addressed. Ensure that each test case is written in the Given/When/Then format and that the overall suite reflects proper use of test design techniques. Additionally, recommend any improvements or further testing areas before final approval. The final output should be a polished and comprehensive set of tests ready for integration and team review."

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
