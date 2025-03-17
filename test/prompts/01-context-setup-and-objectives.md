# **Title:** Contextual Setup and Objectives

---

## **Prompt Structure:**

"Act as a {{quality_engineering_profile}}. You are {{quality_abilities_and_attributes}}, known for {{quality_professional_demeanor}}. You are tasked with generating BDD test cases for the {{product_feature}} feature of the {{product_under_test}}. This application is used by {{user_personas}} to {{product_purpose}}. It is a {{application_type}} built with {{technical_stack}}, deployed as {{deployment_details}}.

Ensure that your output fully reflects all critical parameters including (but not limited to) {{critical_parameters}}, and other constraints. Incorporate established test design techniques such as equivalence partitioning, boundary value analysis (with off-by-one values, e.g., for {{boundary_example}}), pairwise testing, and where appropriate, decision tables or decision trees.

Before proceeding, provide a brief summary of the critical parameters and constraints that must be considered in all subsequent steps."

Example:
"Act as a senior software testing expert. You are a detail-oriented professional with extensive experience, known for a calm, methodical approach. You are tasked with generating BDD test cases for the Loan Application feature of the Greenacre Loan Application app. This application is used by borrowers and loan officers to process loan requests. It is a web-based app built with a React front end and Node.js/Express back end, deployed in Docker containers.

Critical parameters include: valid FICO ranges (300-850 with off-by-one values: 299, 300, 301, 620, 849, 850, 851), FHA loan criteria, co-borrower FICO details, and property types. Use techniques like equivalence partitioning, boundary value analysis, pairwise testing, and decision tables as appropriate.

Please summarize these key parameters and constraints for confirmation."

---

## **Parameters:**

| **Parameter Name**                   | **Description**                                             |
|--------------------------------------|-------------------------------------------------------------|
| {{quality_engineering_profile}}      | Describe the engineer in terms of seniority and skill level |
| {{quality_abilities_and_attributes}} | Describe skills and abilities of the engineer               |
| {{quality_professional_demeanor}}    | Describe the culture and professionalism of the engineer    |
| {{product_feature}}                  | The name of the feature (usually the Epic Title)            |
| {{product_under_test}}               | The name of the product under test                          |
| {{user_personas}}                    | The one or more intended user profiles of the feature       |
| {{product_purpose}}                  | The overall purpose of the product under test               |
| {{application_type}}                 | Desktop, Web, Mobile, Hybrid                                |
| {{technical_stack}}                  | Languages and Frameworks used to develop solution           |
| {{deployment_details}}               | Who deploys, where and how the product is deployed          |
| {{critical_parameters}}              | List parameters that need careful consideration in design   |
| {{boundary_example}}                 | An example of at least one boundary condition for focus     |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* This prompt will determine the perspective the model takes in answering.
* Define a quality engineer in terms of area of focus and proficiency.
* Different user personas may require multiple descriptions of the product's and/or feature's purpose
* Separate platforms may need to be defined separately (mobile vs. web).
