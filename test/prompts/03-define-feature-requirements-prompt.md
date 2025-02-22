# **Title:** Detailed Feature Requirements & Acceptance Criteria

## **Overview:**

Provide the Generative AI with information about the business context of the application, its users, the feature to be tested, and the requirement(s) of the new feature.

* **Task:** Review Feature Requirements
* **Goals:**
  * Input Epic
  * Input User Stories
  * Update Error Hypotheses

---

## **Prompt Structure:**

"Review the following feature requirements for the `{{product_feature}}` feature of the `{{product_under_test}}`, delimited by triple quotes. Analyze the Epic and User Stories to extract the critical features and acceptance criteria. Identify key functional areas, potential edge cases, and any conditions that may present risks or require special attention during testing. Provide a concise summary that outlines the main components to be validated and highlights areas that may need further risk-based test design.

"""
`{{feature_requirements}}`
""""

Example:
"Review the following feature requirements for the Loan Application feature of the Greenacre Loan Application, delimited by triple quotes. Analyze the Epic and User Stories to extract the critical features and acceptance criteria. Identify key functional areas, potential edge cases, and any conditions that may present risks or require special attention during testing. Provide a concise summary that outlines the main components to be validated and highlights areas that may need further risk-based test design.

"""

## Epic

* As a loan applicant, I want to submit the necessary data so that I can get a loan approval.

## User Stories

### Submit for Approval (Back-end)

* As a borrower, I want to submit my data so that I can get a loan approval.

#### Acceptance Criteria (Story 1)

* The following data points are used to determine approval, program, and interest rate:
  * Borrower FICO (valid values: 300-850)
  * Co-Borrower FICO (valid values: 300-850, or none)
  * Property Type (SFR, Condo, Townhouse, Multi-Family, Commercial)
  * Loan-to-Value (LTV) as a percentage (0%-100%)
  * Loan Amount (valid values: USD 50,000 - 1,000,000)
  * Loan Type (Fixed, Adjustable)
  * Loan Period (10, 15, 30, 40)
* Backend API will return three values: Approval, Program, and Rate.
* Rules for evaluating applications and determining approval based on multiple loan programs (Conventional, FHA, Jumbo) are provided.

#### Loan Program Rulesets

* Detailed criteria for Conventional, FHA, and Jumbo loans are specified.

### Display Approval (Front-end)

* As a borrower, I want to see the results of my loan application so that I can make purchasing decisions.

#### Acceptance Criteria (Story 2)

* Return values must be parsed and displayed correctly with specified UI components and formatting.
""""

---

## **Parameters:**

| **Parameter Name**         | **Description**                                    | **Type** | **Example Values**                   |
|----------------------------|----------------------------------------------------|----------|--------------------------------------|
| `{{product_feature}}`      | The name of the feature (usually the Epic Title)   | Text     | "Loan Application Processing"        |
| `{{product_under_test}}`   | The name of the product under test                 | Text     | "the Greenacre Loan Application app" |
| `{{feature_requirements}}` | Describe the feature under test (epic and stories) | Text     | "As a ... I want ... so that ... "   |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* If the model accepts file attachments, attach a visual of the GUI.
