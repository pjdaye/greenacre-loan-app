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

"Error hypotheses are assumptions about the types of errors that may exist in a system. They guide the selection of test data to effectively uncover errors. Different error hypotheses lead to the use of different techniques.

Three common error models to consider are:
  • **Decisions**: Every decision in the program could be incorrect. These errors often include 'off-by-one' mistakes, incorrect operators, or faulty logic.
  • **Translations**: Errors may occur when data moves between different conceptual spaces (e.g., converting user input to database entries).
  • **Assumptions**: Software often relies on assumptions that may not always be valid.

Additionally, you may refer to historical error models such as _Beizer's Taxonomy_ or those found in _Appendix A of Cem Kaner's Testing Computer Software_.

Using these error models, along with your expertise in software testing, evaluate the given feature requirements in the `{{product_under_test}}`. Consider both functional and technical aspects of the system.

Identify and rank the top `{{number_to_output}}` potential areas of risk based on their likelihood and impact."

**Example:**
"Error hypotheses are assumptions about the types of errors that may exist in a system. They guide the selection of test data to effectively uncover errors. Different error hypotheses lead to the use of different techniques.

Three common error models to consider are:
  • **Decisions**: Every decision in the program could be incorrect. These errors often include 'off-by-one' mistakes, incorrect operators, or faulty logic.
  • **Translations**: Errors may occur when data moves between different conceptual spaces (e.g., converting user input to database entries).
  • **Assumptions**: Software often relies on assumptions that may not always be valid.

Additionally, you may refer to historical error models such as _Beizer's Taxonomy_ or those found in _Appendix A of Cem Kaner's Testing Computer Software_.

Using these error models, along with your expertise in software testing, evaluate the given feature requirements in the Greenacre Loan Application. Consider both functional and technical aspects of the system.

Identify and rank the top three potential areas of risk based on their likelihood and impact."

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
