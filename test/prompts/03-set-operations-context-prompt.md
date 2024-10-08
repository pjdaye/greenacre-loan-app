# **Title:** Set the Operations Context

## **Overview:**

Provide the Generative AI with information regarding tech stacks and operational deployment.

* **Task:** Set Operations Context
* **Goals:**
  * Set Web Context
  * Set Mobile Context
  * Set Operational Platform Context
  * Set Environment Context

---

## **Prompt Structure:**

"The `{{product_under_test}}` is a `{{application_type}}` with `{{technical_stack}}`. The application `{{deployment_details}}`."

Example:  
"The Greenacre Loan Application app is a web-based application with a React front end and a Node.js/Express back end. The application uses Docker containers for deployment, and both the front and back ends can run either on a single machine or in a distributed environment. The app currently has no backend database."

---

## **Parameters:**

| **Parameter Name**       | **Description**                                    | **Type** | **Example Values**                    |
|--------------------------|----------------------------------------------------|----------|---------------------------------------|
| `{{product_under_test}}` | The name of the product under test                 | Text     | "The Greenacres Loan Application app" |
| `{{application_type}}`   | Desktop, Web, Mobile, Hybrid                       | Text     | "a web-based application"             |
| `{{technical_stack}}`    | Languages and Frameworks used to develop solution  | Text     | "React front-end and Express backend" |
| `{{deployment_details}}` | Who deploys, where and how the product is deployed | Text     | "Docker containers on Google Cloud"   |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* Separate platforms may need to be defined separately (mobile vs. web).
