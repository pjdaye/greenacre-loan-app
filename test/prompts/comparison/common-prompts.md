# Common Prompts for Experiments

## 1. Contextual Setup and Objectives

Act as a senior software testing expert. You are detail-oriented with hands-on experience in designing and analyzing tests, known for calm, intelligent demeanor. You are tasked with generating BDD test cases for the Loan Application feature of the Greenacre Loan Application app. This application is used by borrowers and loan officers to collect and process information for loan decisions, and it is essential to ensure comprehensive test coverage, early bug detection, and effective risk mitigation. The application is a web-based application built with a React front end and a Node.js/Express back end, and it deployed using Docker containers, capable of running in a distributed environment. Incorporate both business objectives and operational constraints in your test design, and explicitly reference established test design techniques (such as equivalence partitioning, boundary value analysis, and pairwise testing) as needed.

## 2. Define Error Hypothesis

Error hypotheses are assumptions about potential failure points within a system, guiding the selection of test data and scenarios to uncover hidden issues. Common examples include:

• **Decisions**: Issues in program logic such as off-by-one errors, incorrect operators, or flawed decision-making processes.
• **Translations**: Errors occurring when data is transformed or moved between different formats or layers, such as converting user input into database entries.
• **Assumptions**: Faults arising from unverified or invalid assumptions in the code or design.

While these models are common, they are not exhaustive. Based on your expertise and the specifics of the feature requirements in the Greenacre Loan Application app, consider additional error hypotheses that may be relevant. Evaluate both functional and technical aspects of the system to identify a broad range of potential error sources, and prioritize the identified risks by likelihood and impact.

Identify and rank the top three potential areas of risk.

## 3. Detailed Feature Requirements & Acceptance Criteria

Review the following feature requirements for the Loan Application feature of the Greenacre Loan Application app, delimited by triple quotes. Analyze the Epic and User Stories to extract the critical features and acceptance criteria. Identify key functional areas, potential edge cases, and any conditions that may present risks or require special attention during testing. Provide a concise summary that outlines the main components to be validated and highlights areas that may need further risk-based test design.

"""

## Epic

* As a loan applicant, I want to submit the necessary data so that I can get a loan approval.

## User Story

### Submit for Loan Approval

* As a borrower, I want to submit my data so that I can get a loan approval.

#### Acceptance Criteria

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
"""

## 4. Initial Test Case Generation

Using the provided context, error hypotheses, and detailed feature requirements & acceptance criteria, generate an initial draft of test assets for the Loan Application feature of the Greenacre Loan Application app. Your output should include the following sections:

1. **BDD Gherkin Test Cases:** Generate 3–5 test cases covering key scenarios—including valid flows, edge cases, and error conditions—in the Given/When/Then format. Ensure these cases reference test design techniques where applicable.

2. **Test Data Generation Instructions:** Provide a script or code outline that generates test data using techniques such as equivalence partitioning, boundary value analysis, and pairwise combinatorial testing. The script should account for constraints (e.g., only whole, positive numbers) and output a reduced, manageable test data set.

3. **Oracle for Expected Results:** Describe and include a code snippet or pseudocode that acts as an oracle. This script should either pre-compute expected results based on input parameters (e.g., FICO score, Loan Amount) or dynamically validate the outputs of the test cases during execution.

4. **Exploratory Testing Charter:** Provide 2–3 exploratory testing charters focused on areas where manual investigation may uncover additional risks or gaps in automated testing.

Focus on creating a concise yet comprehensive draft that covers the core functional areas and identified risks.

## 5. Coverage Review & Augmentation

Review the initial draft of test assets generated for the Loan Application feature of the Greenacre Loan Application app. Based on the provided context, error hypotheses, and feature requirements, identify any gaps or missing scenarios in the test suite. Consider whether all critical functional flows, edge cases, and risk areas have been adequately addressed, and if established test design techniques (such as pairwise testing or boundary analysis) have been applied.

For each gap identified, suggest one or two additional BDD test cases in the Given/When/Then format, along with any modifications to the test data or oracle instructions as needed. Also, recommend any improvements to ensure comprehensive coverage and proper risk prioritization.

## 6. Final Consolidation and Self-Review

Consolidate the refined test assets for the Loan Application feature of the Greenacre Loan Application app into a final, organized test suite. In this final step, perform a self-review to ensure that:

1. All key scenarios, edge cases, and risk areas have been addressed.
2. Test design techniques (such as equivalence partitioning, boundary value analysis, pairwise testing, and risk-based prioritization) are consistently applied.
3. The test cases are clear, concise, and written in proper BDD Gherkin format.

Additionally, suggest any further improvements or areas that might benefit from additional testing. Output the final consolidated test suite, ready for team review and integration into your CI/CD pipeline.

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

### {{number_to_output}}

three

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
