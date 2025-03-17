# Common Prompts for Experiments

## 1. Contextual Setup and Objectives

"Act as a {{quality_engineering_profile}}. You are {{quality_abilities_and_attributes}}, known for {{quality_professional_demeanor}}. You are tasked with generating BDD test cases for the {{product_feature}} feature of the {{product_under_test}}. This application is used by {{user_personas}} to {{product_purpose}}. It is a {{application_type}} built with {{technical_stack}}, deployed as {{deployment_details}}.

Ensure that your output fully reflects all critical parameters including (but not limited to) FHA loan details, co-borrower FICO, property types, and other constraints. Incorporate established test design techniques such as equivalence partitioning, boundary value analysis (with off-by-one values, e.g., for FICO: {299, 300, 301, 620, 849, 850, 851}), pairwise testing, and where appropriate, decision tables or decision trees.

Before proceeding, provide a brief summary of the critical parameters and constraints that must be considered in all subsequent steps."

## 2. Define Error Hypothesis

"Error hypotheses are assumptions about potential failure points within a system that help guide test data selection and scenario creation. Common examples include:

* **Decisions:** Issues in logic (e.g., off-by-one errors, faulty decision-making).
* **Translations:** Errors in data conversion between system layers.
* **Assumptions:** Failures due to unverified or invalid assumptions.

Do not limit your analysis to these examples. Based on the feature requirements for the {{product_under_test}}, independently evaluate and identify additional error hypotheses—including performance, concurrency, integration, security, and domain-specific risks.

For each identified error hypothesis, provide a brief justification and rank the top {{number_to_output}} risks based on both likelihood and potential impact."

## 3. Detailed Feature Requirements & Acceptance Criteria

"Review the following feature requirements for the {{product_feature}} feature of the {{product_under_test}}, delimited by triple quotes. Analyze the Epic and User Stories to extract critical features, acceptance criteria, and potential edge cases. Identify key functional areas and risk points. Provide a concise summary outlining the main components to be validated, highlighting any areas that may require special risk-based testing.

"""
{{feature_requirements}}
"""

Summarize the critical elements, edge cases, and risk areas."

## 4. Initial Test Case Generation

"Using the provided context, error hypotheses, and feature requirements, generate an initial draft of test assets for the {{product_feature}} feature of the {{product_under_test}}. Your output should include:

1. **BDD Gherkin Test Cases:** Create {{range_of_number}} scenarios with clear, descriptive names that follow the Given/When/Then format. Use Examples and Data Tables where appropriate. For instance, incorporate a table for input parameters, ensuring off-by-one values are included where needed.

2. **Test Data Generation Instructions:** Provide a script or code outline that generates test data using techniques such as equivalence partitioning, boundary value analysis (include off-by-one values), and pairwise testing. Use PICT as the default method (with sample input file instructions), and optionally note a built-in Python alternative.

3. **Oracle for Expected Results:** Include a code snippet or pseudocode that either pre-computes expected outcomes or dynamically validates test results based on the generated test data.

4. **Exploratory Testing Charters:** Provide 2–3 charters in bullet form, following this template:
    * **Target:** [what to explore]
    * **Techniques/Resources:** [methods/tools]
    * **Expected Outcome:** [what risks/information to uncover]

Focus on creating a concise yet comprehensive draft that covers core functional areas and identified risks."

## 5. Coverage Review & Augmentation

"Review the initial draft of test assets generated for the {{product_feature}} feature of the {{product_under_test}}. Identify any gaps or missing scenarios in terms of functional flows, edge cases, and risk areas. Compare the generated test cases against the detailed feature requirements and the original context.

For each gap, suggest one or two additional BDD test cases in Given/When/Then format, and recommend modifications to the data generation or oracle instructions if necessary. Also, note any redundant or overlapping test steps that should be consolidated."

## 6. Final Consolidation and Self-Review

"Consolidate the refined test assets for the {{product_feature}} feature of the {{product_under_test}} into a final, organized test suite. In this final step, perform a comprehensive self-review to ensure:

1. All key scenarios, edge cases, and risk areas have been addressed.
2. Test design techniques (e.g., equivalence partitioning, boundary value analysis, pairwise testing, decision tables) are consistently applied.
3. The Gherkin test cases are clear, concise, and include well-structured Scenario names, Examples, and Data Tables.

Additionally, review the generated tests for redundant or overlapping steps—reusing existing steps where applicable.

Incorporate any execution feedback (e.g., failure rates, performance metrics) and human reviewer comments. Include a dedicated section for human feedback, noting any areas where manual intervention is recommended. Output the final consolidated test suite along with reviewer suggestions for further refinement."

---

## **Parameters:**

### {{quality_engineering_profile}}

senior software testing expert

### {{quality_abilities_and_attributes}}

detail-oriented with hands-on experience in designing and analyzing tests

### {{quality_professional_demeanor}}

calm, intelligent demeanor

### {{product_feature}}

Loan Application

### {{product_under_test}}

Greenacre Loan Application app

### {{user_personas}}

borrowers and loan officers

### {{product_purpose}}

collect and process information for loan decisions

### {{application_type}}

web-based application

### {{technical_stack}}

a React front end and a Node.js/Express back end

### {{deployment_details}}

deployed using Docker containers, capable of running in a distributed environment

### {{range_of_number}}

3-5

### {{feature_requirements}}

Epic

* As a loan applicant, I want to submit the necessary data so that I can get a loan approval.

User Story

Submit for Loan Approval

* As a borrower, I want to submit my data so that I can get a loan approval.

Acceptance Criteria

* Valid values for determining loan application approval, program, and interest rate are:
  * Borrower FICO (valid values: 300-850)
  * Co-Borrower FICO (valid values: 300-850, or none)
  * Property Type (SFR, Condo, Townhouse, Multi-Family, Commercial)
  * Loan-to-Value (LTV) as a percentage (0%-100%)
  * Loan Amount (valid values: USD 50,000 - 1,000,000)
  * Loan Type (Fixed, Adjustable)
  * Loan Period (10, 15, 30, 40)
* A loan application can be approved for one or more of three loan programs: Jumbo, Conventional, or FHA
* A loan is approved for a Jumbo loan program if it meets the following criteria:
  * Borrower FICO: 660-850
  * Co-Borrower FICO: None, or 620-850
  * Property Type: SFR, Condo, Townhouse, Multi-Family
  * Loan-to-Value (LTV): <= 80%
  * Loan Amount (USD): 418,000 - 1,000,000
  * Loan Type: Fixed, Adjustable
  * Loan Period: 15, 30, 40 years
* A loan is approved for a Conventional loan program if it meets the following criteria:
  * Borrower FICO: 620-850
  * Co-Borrower FICO: None, or 520-850
  * Property Type: SFR, Condo, Townhouse, Multi-Family
  * Loan-to-Value (LTV): <= 80%
  * Loan Amount (USD): 50,000 - 1,000,000
  * Loan Type: Fixed, Adjustable
  * Loan Period: 10, 15, 30, 40 years
* A loan is approved for a FHA loan program if it meets the following criteria:
  * Borrower FICO: 300-850
  * Co-Borrower FICO: None, or 300-850
  * Property Type: SFR, Condo, Townhouse
  * Loan-to-Value (LTV): <= 100%
  * Loan Amount (USD): 50,000 - 418,000
  * Loan Type: Fixed
  * Loan Period: 15, 30 years
* If a loan is approved for more than one Loan program, the value returned is based on the order of precedence: Jumbo, Conventional, FHA
* The return values for a loan that is approved will be: Approval, Program, and Rate
* The return values for a loan that is denied will be: Denial, "NA", and "NA".
