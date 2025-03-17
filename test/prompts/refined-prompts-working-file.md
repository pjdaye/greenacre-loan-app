# Updated Prompt Chain

## 1. Contextual Setup and Objectives

**Prompt:**  

```json
{
  "Name": "Contextual Setup and Objectives",
  "Template": [
    "Act as a {{quality_engineering_profile}}. You are {{quality_abilities_and_attributes}}, known for {{quality_professional_demeanor}}. You are tasked with generating BDD test cases for the {{product_feature}} feature of the {{product_under_test}}. This application is used by {{user_personas}} to {{product_purpose}}. It is a {{application_type}} built with {{technical_stack}}, deployed as {{deployment_details}}. \n\nEnsure that your output fully reflects all critical parameters including (but not limited to) FHA loan details, co-borrower FICO, property types, and other constraints. Incorporate established test design techniques such as equivalence partitioning, boundary value analysis (with off-by-one values, e.g., for FICO: {299, 300, 301, 620, 849, 850, 851}), pairwise testing, and where appropriate, decision tables or decision trees. \n\nBefore proceeding, provide a brief summary of the critical parameters and constraints that must be considered in all subsequent steps."
  ],
  "Example": [
    "Act as a senior software testing expert. You are a detail-oriented professional with extensive experience, known for a calm, methodical approach. You are tasked with generating BDD test cases for the Loan Application feature of the Greenacre Loan Application app. This application is used by borrowers and loan officers to process loan requests. It is a web-based app built with a React front end and Node.js/Express back end, deployed in Docker containers. \n\nCritical parameters include: valid FICO ranges (300-850 with off-by-one values: 299, 300, 301, 620, 849, 850, 851), FHA loan criteria, co-borrower FICO details, and property types. Use techniques like equivalence partitioning, boundary value analysis, pairwise testing, and decision tables as appropriate. \n\nPlease summarize these key parameters and constraints for confirmation."
  ]
}
```

---

## 2. Defining Error Hypothesis

**Prompt:**

```json
{
  "Name": "Defining Error Hypothesis",
  "Template": [
    "Error hypotheses are assumptions about potential failure points within a system that help guide test data selection and scenario creation. Common examples include:\n\n• **Decisions:** Issues in logic (e.g., off-by-one errors, faulty decision-making).\n• **Translations:** Errors in data conversion between system layers.\n• **Assumptions:** Failures due to unverified or invalid assumptions.\n\nDo not limit your analysis to these examples. Based on the feature requirements for the {{product_under_test}}, independently evaluate and identify additional error hypotheses—including performance, concurrency, integration, security, and domain-specific risks. \n\nFor each identified error hypothesis, provide a brief justification and rank the top {{number_to_output}} risks based on both likelihood and potential impact."
  ],
  "Example": [
    "For the Greenacre Loan Application, besides common error models, consider risks such as performance bottlenecks under high load, concurrency issues during simultaneous submissions, and security vulnerabilities in data handling. Provide a brief rationale for each and rank the top three risks based on likelihood and impact."
  ]
}
```

---

## 3. Detailed Feature Requirements & Acceptance Criteria

**Prompt:**  

```json
{
  "Name": "Detailed Feature Requirements & Acceptance Criteria",
  "Template": [
    "Review the following feature requirements for the {{product_feature}} feature of the {{product_under_test}}, delimited by triple quotes. Analyze the Epic and User Stories to extract critical features, acceptance criteria, and potential edge cases. Identify key functional areas and risk points. Provide a concise summary outlining the main components to be validated, highlighting any areas that may require special risk-based testing.\n\n\"\"\"\n{{feature_requirements}}\n\"\"\""
  ],
  "Example": [
    "Review the following requirements for the Loan Application feature of the Greenacre Loan Application:\n\n\"\"\"\n## Epic\n\n* As a loan applicant, I want to submit data to obtain a loan decision.\n\n## User Stories\n\n### Submit for Approval (Back-end)\n\n* Criteria include valid FICO ranges, Loan Amount between USD 50,000 and 1,000,000, etc.\n\n#### Acceptance Criteria\n\n* The system uses given parameters to determine Approval, Program, and Rate.\n\n### Display Approval (Front-end)\n\n* Approved loans display appropriate messages and formatting.\n\"\"\"\n\nSummarize the critical elements, edge cases, and risk areas."
  ]
}
```

---

## 4. Initial Test Case Generation

**Prompt:**  

```json
{
  "Name": "Initial Test Case Generation",
  "Template": [
    "Using the provided context, error hypotheses, and feature requirements, generate an initial draft of test assets for the {{product_feature}} feature of the {{product_under_test}}. Your output should include:\n\n1. **BDD Gherkin Test Cases:** Create 3–5 scenarios with clear, descriptive names that follow the Given/When/Then format. Use Examples and Data Tables where appropriate. For instance, incorporate a table for input parameters, ensuring off-by-one values are included where needed.\n\n2. **Test Data Generation Instructions:** Provide a script or code outline that generates test data using techniques such as equivalence partitioning, boundary value analysis (include off-by-one values), and pairwise testing. Use PICT as the default method (with sample input file instructions), and optionally note a built-in Python alternative.\n\n3. **Oracle for Expected Results:** Include a code snippet or pseudocode that either pre-computes expected outcomes or dynamically validates test results based on the generated test data.\n\n4. **Exploratory Testing Charters:** Provide 2–3 charters in bullet form, following this template: \n   - **Target:** [what to explore]\n   - **Techniques/Resources:** [methods/tools]\n   - **Expected Outcome:** [what risks/information to uncover]\n\nFocus on creating a concise yet comprehensive draft that covers core functional areas and identified risks."
  ],
  "Example": [
    "Scenario: Valid Loan Application with Boundary FICO Values\n  Given a borrower with the following attributes:\n    | Attribute          | Value        |\n    | Borrower FICO      | 299          |\n    | Co-Borrower FICO   | 0            |\n    | Loan Amount        | 500000       |\n    | Loan Type          | Fixed        |\n  When the loan application is submitted\n  Then the system should reject the application due to invalid FICO score\n\nExamples:\n  | Borrower FICO | Co-Borrower FICO | Loan Amount | Expected Outcome     |\n  | 299           | 0                | 500000      | Application Rejected |\n  | 300           | 0                | 500000      | Application Approved |\n  | 851           | 0                | 500000      | Application Rejected |\n\nTest Data Generation Instructions: Provide a PICT input file that outlines combinations for FICO, Loan Amount, etc., and include a note on merging overlapping boundary values. Optionally, offer a Python snippet as an alternative.\n\nOracle:\nProvide pseudocode that takes input values (e.g., FICO score, Loan Amount) and returns expected values (Approval, Program, Rate), handling edge cases appropriately.\n\nExploratory Testing Charters:\n- Explore the loan application submission process under high concurrency to uncover performance bottlenecks.\n- Investigate UI behavior when multiple input errors occur simultaneously."
  ]
}
```

---

## 5. Coverage Review & Augmentation

**Prompt:**  

```json
{
  "Name": "Coverage Review & Augmentation",
  "Template": [
    "Review the initial draft of test assets generated for the {{product_feature}} feature of the {{product_under_test}}. Identify any gaps or missing scenarios in terms of functional flows, edge cases, and risk areas. Compare the generated test cases against the detailed feature requirements and the original context. \n\nFor each gap, suggest one or two additional BDD test cases in Given/When/Then format, and recommend modifications to the data generation or oracle instructions if necessary. Also, note any redundant or overlapping test steps that should be consolidated."
  ],
  "Example": [
    "Upon reviewing the initial tests for the Loan Application feature, you notice that boundary conditions for the Borrower FICO score are underrepresented. Suggest an additional test case such as:\n\nScenario: Invalid Borrower FICO below minimum\n  Given a borrower with a FICO score of 299\n  When the application is submitted\n  Then the system should reject the application\n\nAlso, highlight that the data generation script should merge overlapping boundary sets (e.g., between different loan programs) and remove duplicates."
  ]
}
```

---

## 6. Final Consolidation and Human Review

**Prompt:**  

```json
{
  "Name": "Final Consolidation and Human Review",
  "Template": [
    "Consolidate the refined test assets for the {{product_feature}} feature of the {{product_under_test}} into a final, organized test suite. In this final step, perform a comprehensive self-review to ensure:\n\n1. All key scenarios, edge cases, and risk areas have been addressed.\n2. Test design techniques (e.g., equivalence partitioning, boundary value analysis, pairwise testing, decision tables) are consistently applied.\n3. The Gherkin test cases are clear, concise, and include well-structured Scenario names, Examples, and Data Tables. \n\nAdditionally, review the generated tests for redundant or overlapping steps—reusing existing steps where applicable. \n\nIncorporate any execution feedback (e.g., failure rates, performance metrics) and human reviewer comments. Include a dedicated section for human feedback, noting any areas where manual intervention is recommended. Output the final consolidated test suite along with reviewer suggestions for further refinement."
  ],
  "Example": [
    "Final consolidated test suite for the Loan Application feature includes all test cases, with duplicate steps removed and similar scenarios consolidated. A human review section notes that some UI validation tests require further manual review, and execution feedback indicates that boundary tests for FICO values need slight adjustment. The final output is ready for integration into CI/CD."
  ]
}
```

---

## Instructions for the Test Professional

### Overall Workflow

1. **Preparation:**  
   - Populate the context placeholders (e.g., product_feature, product_under_test, quality_engineering_profile, etc.) with the relevant details.
   - Ensure that the complete parameter checklist (including all critical constraints like FHA details, FICO ranges, etc.) is accurately provided in the Contextual Setup prompt.
  
2. **Prompt Execution:**  
   - Execute the prompts in the defined order: Contextual Setup → Error Hypothesis → Detailed Feature Requirements → Initial Test Case Generation → Coverage Review & Augmentation → Final Consolidation.
   - At each stage, review the model's output, and provide any clarifications if necessary. (This is where the human-in-the-loop comes into play; if an output is unclear or incomplete, refine the prompt accordingly.)

3. **Interim Checkpoints:**  
   - Use the summary checkpoints (after the context block and before each major generation step) to verify that all critical parameters are maintained.
   - In the Coverage Review and Final Consolidation stages, cross-check the test cases for redundancies and consistency.

4. **Execution Feedback Integration:**  
   - After running the generated test suite in your execution environment, collect execution metrics (e.g., failure rates, coverage reports, performance data).
   - Feed this execution feedback back into the prompts (especially in the Final Consolidation stage) to refine test cases further.

5. **Human Review:**  
   - During the final consolidation step, include your manual review notes on test quality, redundancy, and any recommended adjustments. Use these notes for continuous improvement in future iterations.

### Instructions for Individual Prompts

- **Contextual Setup and Objectives:**  
  Confirm that all key details are captured and provide a brief summary before moving forward.

- **Error Hypothesis:**  
  Independently analyze and rank risks; ensure that the model expands beyond the provided examples.

- **Detailed Feature Requirements:**  
  Carefully review the provided requirements and ensure that the generated summary covers all critical components.

- **Initial Test Case Generation:**  
  Check that the generated Gherkin tests are clear and include Scenario names, Examples, and Data Tables. Verify that the test data generation and Oracle scripts incorporate off-by-one values and handle overlapping boundaries appropriately.

- **Coverage Review & Augmentation:**  
  Identify any gaps or redundancies, and suggest additional test cases or modifications as needed.

- **Final Consolidation and Human Review:**  
  Review the consolidated test suite for completeness and consistency. Include your feedback and any execution insights.

---

## Efficiency Considerations

- **Balance Accuracy and Token Cost:**  
  Aim for clear, concise instructions that don’t sacrifice necessary detail. Use few-shot examples where possible to minimize verbosity.
- **Iterative Refinement:**  
  If outputs seem verbose or redundant, adjust the prompt with additional summarization or filtering instructions.
- **Reuse of Standard Step Definitions:**  
  Incorporate references to an existing step library to reduce redundancy in Gherkin test cases.

---
