# **Title:** Define Error Hypothesis

## **Overview:**

Generate areas of potential risk from common and uncommon risk types and error models.

* **Discipline:** Formulate Error Hypotheses
* **Goals:**
  * Defince Decision Error Model
  * Define Translations Error Model
  * Define Assumptions Error Model
  * Define Additional Error Models
  * Return Error Hypotheses
  
---

## **Prompt Structure:**

"Error hypotheses are assumptions about potential failure points within a system, guiding the selection of test data and scenarios to uncover hidden issues. Common examples include:

• **Decisions**: Issues in program logic such as off-by-one errors, incorrect operators, or flawed decision-making processes.
• **Translations**: Errors occurring when data is transformed or moved between different formats or layers, such as converting user input into database entries.
• **Assumptions**: Faults arising from unverified or invalid assumptions in the code or design.

While these models are common, they are not exhaustive. Based on your expertise and the specifics of the feature requirements in the `{{product_under_test}}`, consider additional error hypotheses that may be relevant. Evaluate both functional and technical aspects of the system to identify a broad range of potential error sources, and prioritize the identified risks by likelihood and impact.

Identify and rank the top `{{number_to_output}}` potential areas of risk."

Example:
"Error hypotheses are assumptions about potential failure points within a system, guiding the selection of test data and scenarios to uncover hidden issues. Common examples include:

• **Decisions**: Issues in program logic such as off-by-one errors, incorrect operators, or flawed decision-making processes.
• **Translations**: Errors occurring when data is transformed or moved between different formats or layers, such as converting user input into database entries.
• **Assumptions**: Faults arising from unverified or invalid assumptions in the code or design.

While these models are common, they are not exhaustive. Based on your expertise and the specifics of the feature requirements in the Greenacre Loan Application, consider additional error hypotheses that may be relevant. Evaluate both functional and technical aspects of the system to identify a broad range of potential error sources, and rank the top three potential areas of risk based on their likelihood and impact."

---

## **Parameters:**

| **Parameter Name**       | **Description**                    | **Type**     | **Example Values**                    |
|--------------------------|------------------------------------|--------------|---------------------------------------|
| `{{product_under_test}}` | The name of the product under test | Text         | "The Greenacres Loan Application app" |
| `{{number_to_output}}`   | The request number of outputs      | Text, Number | "top three"                           |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* Add any additional error models for consideration.
