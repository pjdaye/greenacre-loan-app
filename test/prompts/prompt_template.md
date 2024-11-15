# **Prompt Documentation Template**

## **Title:**

Give your prompt a descriptive title that reflects its purpose.

---

## **Overview:**

Provide a brief description of the prompt, including its primary use case and what outcomes it generates.

* **Discipline:** `{{prompt_domain}}`
* **Task:** `{{task_name}}`
* **Goals:**
  * `{{subtask_1}}`
  * `{{subtask_1}}`
  * `{{subtask_1}}`

---

## **Prompt Structure:**

Copy the full prompt text here, with placeholders for any parameters that can be customized. Use clear and consistent notation for parameters (e.g., `{{parameter_name}}`).

Example:  
`"Write a summary of the product {{product_name}} focusing on its features, such as {{feature_1}}, {{feature_2}}, and {{feature_3}}."`

---

## **Parameters:**

| **Parameter Name** | **Description**                               | **Type**     | **Example Values**                    |
|--------------------|-----------------------------------------------|--------------|---------------------------------------|
| `{{parameter_name}}`| Describe the purpose of this parameter        | Text/Number/Other | Example input for this parameter      |
| `{{feature_1}}`    | First feature of the product                  | Text         | "User-friendly interface"             |
| `{{feature_2}}`    | Second feature of the product                 | Text         | "Cross-platform compatibility"        |
| `{{feature_3}}`    | Third feature of the product                  | Text         | "Advanced analytics capabilities"     |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* Include any additional tips, common pitfalls, or suggestions for getting the best results with this prompt.
* You can mention variations or enhancements that can be made to the prompt for different contexts.
