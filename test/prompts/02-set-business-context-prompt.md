# **Title:** Set the Business Context

## **Overview:**

Provide the Generative AI with information about the business context of the application, its users, the feature to be tested, and the requirement(s) of the new feature.

* **Task:** Set Business Context
* **Goals:**
  * Set User Persona
  * Set Application Context
  * Set Feature Context

---

## **Prompt Structure:**

"When prompted, you will be generating test cases to test the `{{product_feature}}` feature of the `{{product_under_test}}`. This app is used by `{{user_personas}}` to `{{product_purpose}}`. `{{product_feature_purpose}}`."

**Example:**
"When prompted, you will be generating test cases to test the Loan Application feature of the Greenacre Loan Application app. This app is used by borrowers and loan officers to collect information about the borrower(s), the property, the proposed purchase, and the requested mortgage. The app processes this information and provides a decision on whether to approve or deny the loan application."

---

## **Parameters:**

| **Parameter Name**            | **Description**                                       | **Type** | **Example Values**                                   |
|-------------------------------|-------------------------------------------------------|----------|------------------------------------------------------|
| `{{product_feature}}`         | The name of the feature (usually the Epic Title)      | Text     | "Loan Application Processing"                        |
| `{{product_under_test}}`      | The name of the product under test                    | Text     | "the Greenacre Loan Application app"                 |
| `{{user_personas}}`           | The one or more intended user profiles of the feature | Text     | "borrowers and loan officers"                        |
| `{{product_purpose}}`         | The overall purpose of the product under test         | Text     | "collect borrower information for processing"        |
| `{{product_feature_purpose}}` | The purpose / problem solved by the proposed feature  | Text     | "provide a decision on approval of loan application" |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* Different user personas may require multiple descriptions of the product's and/or feature's purpose
