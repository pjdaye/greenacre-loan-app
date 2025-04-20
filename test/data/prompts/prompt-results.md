# Feature: Loan Approval

## 1. [Context Setup and Objective](../../01-context-setup-and-objectives.md)

### Brief Summary of Critical Parameters and Constraints

Before generating detailed BDD test cases, it’s important to clearly define and summarize critical parameters, constraints, and testing techniques that will guide the test design process for the **Loan Application feature** of the Greenacre Loan Application app.

#### **Critical Parameters:**

1. **Loan Type**:
   - FHA (Federal Housing Administration)
   - Conventional
   - VA
   - USDA

2. **Borrower and Co-borrower FICO Scores** (Credit Scores):
   - Valid Range: 300–850
   - FHA typical minimum: 580 (standard threshold), 500-579 (conditional approval), below 500 (usually ineligible)
   - Conventional: Usually 620+
   - VA/USDA: typically 620+ (varies slightly)

   **Boundary Values** (for precise testing):
   - Invalid low-end: 299, 300
   - Near lower boundary: 301, 499, 500, 501, 579, 580, 581, 619, 620, 621
   - Upper-end boundary: 849, 850, 851

3. **Property Type**:
   - Single-family Residence (SFR)
   - Multi-family (2–4 units)
   - Condominium
   - Manufactured home
   - Townhouse

   *(FHA loans have specific property type constraints, e.g., multi-family (up to 4 units), condos require FHA approval.)*

4. **Borrower Income and Employment Status**:
   - Employment Type: Salaried, Self-employed, Unemployed, Contract
   - Income range (critical for loan approval): Equivalence partitioning low-medium-high values.

5. **Loan Amount**:
   - FHA County-specific loan limits
   - Minimum and maximum loan limits for Conventional loans
   - Boundary conditions at minimum and maximum amounts

6. **Debt-to-Income (DTI) Ratio**:
   - FHA max ~43%, Conventional typically max ~50%
   - Boundary values around maximum thresholds

7. **Down Payment Amount (Loan-to-Value ratio - LTV)**:
   - FHA typical minimum 3.5%, Conventional typically 5%+
   - Boundary value analysis: 3.49%, 3.50%, 3.51%, 4.99%, 5.00%, 5.01%

8. **Loan Term**:
   - Typical values: 15, 20, 30 years
   - Equivalence partitioning: valid vs invalid durations (14 years, 16 years, 29 years, 31 years)

9. **Documentation Availability**:
   - Full Documentation vs. Partial Documentation scenarios (edge cases)

---

#### **Constraints and Considerations:**

- **FHA-Specific Constraints**:
  - Minimum FICO and down payment rules (580+ score → min 3.5%, 500-579 → 10%, below 500 → ineligible).
  - Mandatory FHA appraisal and inspection.
  - Maximum FHA loan limit (geographically dependent).

- **Co-borrower**:
  - Lowest FICO among borrowers is used for qualifying.
  - Testing pairwise combinations of borrower/co-borrower scores critical.

- **Property Constraints**:
  - FHA/VA/USDA approval required for condos and manufactured homes.

- **Technical/System Constraints**:
  - Distributed environment (Docker containers, React frontend, Node.js backend).
  - Network and backend integration dependencies.
  - API response validation (status codes, data consistency).

- **Security and Compliance**:
  - Sensitive borrower data privacy and encryption (PII handling).
  - Accessibility and regulatory compliance (ADA, ECOA, Fair Housing).

---

#### **Established Test Design Techniques to be Employed:**

- **Equivalence Partitioning** to identify valid and invalid data classes.
- **Boundary Value Analysis** (with special attention to off-by-one scenarios).
- **Pairwise Testing** for critical combinations of parameters (loan type vs. FICO, property type vs. loan limits).
- **Decision Tables and Decision Trees** for clarity in complex conditional logic scenarios (e.g., FHA loans with varying FICO and down payment conditions).

---

**Next Steps**:
With these critical parameters, constraints, and testing strategies clearly identified and defined, the next step is to create detailed BDD test cases incorporating the outlined parameters, constraints, and leveraging the test design techniques summarized above.

---

## 2. [Define Error Hypothesis](../../02-define-error-hypothesis-prompt.md)

Here is a comprehensive evaluation of potential error hypotheses tailored specifically for the **Greenacre Loan Application app** feature:

## Error Hypotheses and Justifications

### 1. **Decision Logic Errors (Functional correctness)**

- **Hypothesis:** Conditional logic (e.g., FHA eligibility based on FICO, LTV ratio calculations, DTI thresholds) could contain off-by-one or boundary errors.
- **Justification:** Complex business rules around FHA loan conditions or co-borrower qualifications can easily introduce subtle logic errors leading to incorrect loan acceptance or denial.

---

### 2. **Data Translation and Integrity Errors**

- **Hypothesis:** Incorrect or corrupted translations between frontend input (React), API layer (Node.js), and database.
- **Justification:** Different system layers (frontend, backend, database) require precise data formats and may unintentionally truncate or incorrectly round sensitive financial information (loan amounts, DTI ratios).

---

### 3. **Invalid Assumption Errors (Domain-specific)**

- **Hypothesis:** Business rules or technical validations assume inaccurate domain conditions (e.g., assuming a property type always FHA-eligible).
- **Justification:** FHA guidelines and compliance constraints frequently change. Developers may incorrectly assume properties (condos, manufactured homes) are FHA-approved without verification.

---

### 4. **Performance Errors**

- **Hypothesis:** Slow response times or degraded system performance under heavy user load (e.g., many concurrent loan applications).
- **Justification:** The application deployed in Docker containers might face resource contention or poor horizontal scalability, causing delayed loan processing or timeouts.

---

### 5. **Concurrency and Race Conditions**

- **Hypothesis:** Data corruption or inconsistent state when multiple loan officers simultaneously update a loan application record.
- **Justification:** Distributed system architecture and concurrent access to shared resources (e.g., borrower financial data) can introduce subtle concurrency bugs, leading to data inconsistency or lost updates.

---

### 6. **Integration Errors**

- **Hypothesis:** Failure of integration points between frontend (React) and backend APIs (Node.js/Express), or between backend and external services (credit bureaus, FHA property databases).
- **Justification:** External integrations, particularly credit scoring services or FHA databases, can introduce unexpected behaviors like delayed responses, incorrect data mappings, or API changes that affect loan decisions.

---

### 7. **Security Vulnerabilities**

- **Hypothesis:** Unauthorized access to borrower data due to improper access control or authentication flaws.
- **Justification:** Sensitive borrower PII (Personal Identifiable Information) and financial data present high-value targets; flaws in authentication, authorization, or session management could result in serious privacy violations and regulatory penalties.

---

### 8. **Domain-specific Compliance Errors**

- **Hypothesis:** Violations of FHA guidelines, ECOA (Equal Credit Opportunity Act), or Fair Housing compliance due to incorrect system implementations.
- **Justification:** Complex legal and regulatory compliance rules mean that misinterpretation or faulty logic can lead directly to costly legal violations, fines, or reputational harm.

---

## Ranking of Top Three Risks (Likelihood x Impact)

| Rank | Error Hypothesis                      | Likelihood | Impact | Justification for Ranking |
|------|---------------------------------------|------------|--------|---------------------------|
| 1    | **Decision Logic Errors**             | High       | High   | Errors in decision logic (e.g., FICO, DTI, FHA eligibility) directly lead to incorrect lending decisions. Such issues frequently occur, have immediate financial impact, and compliance repercussions. |
| 2    | **Security Vulnerabilities**          | Medium     | High   | Potential breaches of sensitive borrower data carry severe compliance, legal, and reputational risks. Though potentially less frequent, even a single event carries massive negative consequences. |
| 3    | **Integration Errors**                | Medium     | High   | Failures or inaccurate data from integrations with external systems (credit scoring services, FHA databases) are relatively common and significantly affect loan accuracy and business continuity. |

---

**Summary of Priority Actions:**

- Emphasize detailed test case generation around **decision logic**, ensuring robust boundary condition analysis.
- Security testing must be prioritized with penetration tests and threat modeling to identify vulnerabilities in handling sensitive borrower data.
- Implement comprehensive integration testing with mock external systems and real-world API scenarios to proactively identify risks.

This structured identification and prioritization approach ensures thorough, risk-based test coverage aligned with business-critical areas of the **Greenacre Loan Application app**.

---

## Follow up prompts to #2

"Let's assume that security and performance issues are out-of-scope for this story and re-asses our risks."

====

Reassessing the identified error hypotheses **excluding security and performance issues**, here’s the refined list and revised risk ranking for the Greenacre Loan Application app:

## Refined Error Hypotheses (excluding Security & Performance)

### 1. **Decision Logic Errors**

- **Hypothesis:**  
  Boundary conditions or off-by-one errors in loan qualification logic (FHA guidelines, borrower/co-borrower FICO score evaluation, DTI calculation).
- **Justification:**  
  Complex decision logic (e.g., FHA loan approval criteria based on FICO, LTV, and DTI values) presents high potential for subtle mistakes.

---

### 2. **Integration Errors**

- **Hypothesis:**  
  Issues arising from incorrect integration between the React frontend, Node.js backend APIs, and external services (credit scoring, FHA approval databases).
- **Justification:**  
  Integration complexity increases potential failures. External credit-check APIs or FHA databases can fail silently, causing incorrect decisions or missing data in loan processing.

---

### 3. **Concurrency and Race Condition Errors**

- **Hypothesis:**  
  Data inconsistency due to simultaneous access or updates by multiple loan officers or borrowers to a single loan application record.
- **Justification:**  
  Distributed environments can easily result in race conditions, causing loan data inconsistency or corruption (e.g., borrower data incorrectly overwritten or updated).

---

### 4. **Domain-specific Compliance Errors**

- **Hypothesis:**  
  Violations or incorrect implementation of FHA or regulatory (ECOA, Fair Housing) rules leading to compliance failures.
- **Justification:**  
  Misinterpretations or faulty assumptions about changing FHA guidelines or regulatory requirements could lead to non-compliant loan approvals, significant financial penalties, or reputational damage.

---

### 5. **Invalid Assumption Errors (Domain)**

- **Hypothesis:**  
  Failures due to incorrect assumptions about eligibility criteria (e.g., incorrectly assuming certain property types or income/employment types qualify for FHA loans).
- **Justification:**  
  Changing FHA loan policies and conditions can introduce assumptions that rapidly become outdated, affecting correct loan approval.

---

### 6. **Data Translation and Integrity Errors**

- **Hypothesis:**  
  Data corruption or loss during transmission/conversion between frontend inputs, backend processing, and data persistence layers.
- **Justification:**  
  Financial calculations and loan criteria are sensitive to data precision (rounding errors or data truncation), directly affecting loan decisions.

---

## Revised Ranking of Top Three Risks (Likelihood × Impact)

| Rank | Error Hypothesis                | Likelihood | Impact | Justification for Revised Ranking              |
|------|---------------------------------|------------|--------|------------------------------------------------|
| 1    | **Decision Logic Errors**       | High       | High   | Incorrect decision-making logic directly impacts the correctness of loan approvals or denials, causing immediate business and compliance risk. |
| 2    | **Integration Errors**          | Medium     | High   | High dependence on external APIs increases integration complexity; failures can cause systemic issues in loan processing. |
| 3    | **Domain-specific Compliance Errors** | Medium     | High   | Compliance violations could result in legal and financial consequences. FHA rules are frequently updated, and failing to adapt leads to regulatory risks. |

---

### Adjusted Priority Actions (for Testing)

- **Decision logic testing**:  
  Thoroughly employ **boundary value analysis**, **equivalence partitioning**, and **decision tables/trees** to cover loan-qualification logic (FICO, DTI, LTV, FHA-specific conditions).

- **Integration testing**:  
  Design detailed tests for external system interactions and simulate API failures and recovery scenarios, ensuring graceful system degradation.

- **Compliance-focused domain testing**:  
  Regularly validate system rules against current FHA and regulatory guidelines, ensuring rapid adaptation to domain-specific changes.

This refined analysis provides a clear, actionable foundation for effective test-case generation aligned directly with identified and prioritized risks.

## 3. [Define Feature Requirements](../../03-define-feature-requirements-prompt.md)

Here’s a concise, structured summary derived from the provided **Epic and User Stories**, highlighting critical functional elements, acceptance criteria, key edge cases, and potential risk areas needing special attention in testing:

---

## 📌 **Critical Elements to Validate**

### **1. Borrower/Co-Borrower FICO Scores**

- Valid Range: **300–850**  
- Special conditions:
  - Jumbo: Borrower ≥660, Co-Borrower ≥620 or None  
  - Conventional: Borrower ≥620, Co-Borrower ≥520 or None  
  - FHA: Borrower and Co-Borrower ≥300

### **2. Property Type Eligibility**

- Jumbo & Conventional: SFR, Condo, Townhouse, Multi-Family  
- FHA: **Excludes Multi-Family and Commercial** (allows only SFR, Condo, Townhouse)

### **3. Loan-to-Value (LTV)**

- Jumbo & Conventional: LTV ≤80%
- FHA: LTV ≤100%

### **4. Loan Amount Ranges**

| Program | Min Amount (USD) | Max Amount (USD)  |
|---------|------------------|-------------------|
| Jumbo   | 418,000          | 1,000,000         |
| Conventional | 50,000      | 1,000,000         |
| FHA     | 50,000           | 418,000           |

### **5. Loan Type & Period**

| Program | Allowed Loan Types | Allowed Period (years)  |
|---------|--------------------|-------------------------|
| Jumbo   | Fixed, Adjustable  | 15, 30, 40              |
| Conventional | Fixed, Adjustable | 10, 15, 30, 40      |
| FHA     | **Fixed only**     | **15, 30 only**         |

### **6. Loan Program Approval Precedence**

- If eligible for multiple programs, precedence order is:  
  **Jumbo → Conventional → FHA**

### **7. Application Decision Return Values**

- Approved: `Approval`, `Program Name`, and calculated `Interest Rate`
- Denied: `Denial`, `"NA"`, `"NA"`

---

## 📌 **Potential Edge Cases**

**Edge cases require careful testing, especially around boundary values and combinations:**

- **FICO boundary values:**
  - Jumbo minimum borrower FICO (659, 660, 661)
  - Conventional minimum borrower FICO (619, 620, 621)
  - FHA lower boundary (299, 300, 301)

- **Co-borrower eligibility:**
  - Absence (None) vs. lowest acceptable FICO thresholds (e.g., Jumbo co-borrower at 619 vs. 620).

- **Loan Amount Boundaries:**
  - Jumbo boundary (417,999; 418,000; 418,001)
  - FHA upper boundary (417,999; 418,000; 418,001)
  - Conventional low-end boundary (49,999; 50,000; 50,001)

- **Loan-to-Value (LTV) thresholds:**
  - Jumbo/Conventional (79.99%, 80%, 80.01%)
  - FHA upper limit (99.99%, 100%, 100.01%)

- **Property Type exclusions:**
  - FHA approval request for excluded property types (Multi-Family, Commercial).

- **Loan Type/Period combinations:**
  - FHA applications attempting invalid types or periods (Adjustable, 10, 40 years).

- **Multiple Program Eligibility:**
  - Scenarios qualifying for multiple programs, explicitly verifying program selection precedence.

---

## 📌 **Risk Areas (Requiring Special Risk-Based Testing)**

- **Decision Logic Accuracy:**  
  The complex conditional logic for determining loan eligibility (FICO, LTV, loan amounts) significantly increases risk for subtle boundary errors or off-by-one mistakes.

- **Program Precedence Rules:**  
  Cases with multiple eligible programs require rigorous validation to ensure precedence logic consistently applies.

- **Property Type Validation:**  
  FHA eligibility rules explicitly exclude some property types. Misclassification could lead to compliance and regulatory issues.

- **Data Translation & Integrity:**  
  Loan amounts, LTV percentages, and FICO score handling across the frontend-backend boundary could introduce rounding, truncation, or interpretation errors affecting loan decisions.

---

## ✅ **Summary (Testing Focus)**

| **Focus Area**          | **Reasoning**                                        |
|-------------------------|------------------------------------------------------|
| Decision Logic          | High likelihood & impact from incorrect eligibility determinations |
| Boundary Conditions     | Critical for FICO scores, Loan amounts, LTV thresholds |
| Program Precedence      | Ensuring correctness in program selection hierarchy  |
| FHA Specific Constraints | Ensuring strict adherence to FHA rules (loan type, loan period, property exclusions) |
| Data Integrity (Front/Back Integration) | Errors in numeric precision or translations directly impact loan decisions |

---

This structured breakdown provides a clear testing roadmap that emphasizes critical functionality, clearly identifies edge conditions, and prioritizes areas requiring targeted, risk-based validation efforts.

---

## 4. [Initial Test Case Generation](../../04-initial-test-case-generation-prompt.md)

## Greenacre Loan Application - Loan Application Feature Test Assets

---

### ✅ 1. BDD Gherkin Test Cases (Scenarios)

#### Scenario 1: Jumbo Loan Approved at Boundary Conditions

```gherkin
Given borrower FICO is 660
And co-borrower FICO is 620
And property type is Single-Family Residence
And loan amount is USD 418,000
And LTV is exactly 80%
And loan type is Fixed
And loan period is 30 years
When the loan application is submitted
Then the application is approved
And the loan program is Jumbo
```

#### Scenario 2: Conventional Loan Approved When Jumbo Not Qualified

```gherkin
Given borrower FICO is 650
And no co-borrower is provided
And property type is Condo
And loan amount is USD 417,999
And LTV is 80%
And loan type is Adjustable
And loan period is 10 years
When the loan application is submitted
Then loan is approved under Conventional program
```

#### Scenario 3: FHA Loan Approved with Lowest Possible FICO

```gherkin
Given borrower FICO is 300
And co-borrower FICO is none
And property type is Townhouse
And loan amount is USD 150,000
And LTV is 100%
And loan type is Fixed
And loan period is 15 years
When the loan application is submitted
Then loan is approved under FHA program
```

#### Scenario 2: Loan Denial due to Exceeding LTV Threshold

```gherkin
Given borrower FICO is 720
And co-borrower FICO is 700
And property type is Townhouse
And loan amount is USD 400,000
And LTV is 100.01%
And loan type is Fixed
And loan period is 30 years
When the loan application is submitted
Then loan is denied
And reason provided is "NA"
```

#### Scenario 3: FHA Loan Denial due to Invalid Property Type

```gherkin
Given borrower FICO is 680
And no co-borrower is provided
And property type is Multi-Family (5 units)
And loan amount is USD 300,000
And LTV is 95%
And loan type is Fixed
And loan period is 30 years
When the loan application is submitted
Then loan application is denied
And reason is property type invalid for FHA
```

#### Scenario 4: Multiple Program Eligibility – Highest Priority Selected

```gherkin
Given borrower FICO is 700
And co-borrower FICO is 650
And property type is Townhouse
And loan amount is USD 500,000
And LTV is 78%
And loan type is Fixed
And loan period is 30 years
When the loan application is submitted
Then loan is approved under Jumbo program
```

#### Scenario 5: Denial due to Low Borrower FICO for Conventional Loan

```gherkin
Given borrower FICO is 619
And no co-borrower is provided
And property type is Condo
And loan amount is USD 200,000
And LTV is 80%
And loan type is Fixed
And loan period is 15 years
When the loan application is submitted
Then the loan application is denied
```

---

## 📌 Test Data Generation (Using PICT)

Create a **`LoanApplicationParameters.txt`** input file for PICT:

```gherkin
BorrowerFICO: 299,300,301,619,620,621,659,660,661,849,850,851
CoBorrowerFICO: none,299,300,619,620,850
PropertyType: SFR,Condo,Townhouse,MultiFamily,Commercial
LoanAmount: 417999,418000,418001,500000
LTV: 79.99,80,80.01,99.99,100,100.01
LoanType: Fixed,Adjustable
LoanPeriod: 10,15,30,40
```

Run PICT:

```cli
pict loan_app_input.txt /o:pairwise > LoanApp_TestData.csv
```

> **Note:**  
> Alternatively, you can use Python's built-in `allpairspy` package to perform pairwise testing directly:

```python
from allpairspy import AllPairs

parameters = [
  [660, 659, 620, 619, 850, 300], # FICO
  ["SFR","Condo","MultiFamily","Commercial"], # Property Types
  [417999,418000,418001], # Loan Amount
  [80, 79.99, 80.01], # LTV
  ["Fixed", "Adjustable"], # Loan Type
  [15,30,40] # Loan Period
]

pairwise_cases = list(AllPairs(parameters))
```

---

## 📌 Oracle for Expected Results (Pseudocode)

```python
def determine_loan_program(fico, co_fico, property_type, loan_amount, ltv, loan_type, loan_period):
    if fico >= 660 and (co_fico is None or co_fico >=620) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount >=418000 and ltv <=80 and loan_period in [15,30,40]:
        return "Jumbo"
    elif fico >= 620 and (co_fico is None or co_fico >=520) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount <= 417999 and ltv <=80 and loan_period in [10,15,30,40]:
        return "Conventional"
    elif property_type in ["SFR","Condo","Townhouse"] and loan_amount <=418000 and ltv <=100 and loan_period in [15,30] and fico >=300:
        return "FHA"
    else:
        return "Denial"
```

---

## 📌 Exploratory Test Charters

### Charter 1: Decision Logic Boundary Exploration

- **Objective:** Uncover subtle boundary condition issues around FICO scores, LTV, and loan amounts.
- **Method:** Test edge conditions, off-by-one values, and complex combinations.
- **Risks:** Incorrect approval or denial logic

### Charter 2: FHA Program Compliance

- **Objective:** Explore compliance adherence to FHA-specific constraints (property types, loan periods, LTV).
- **Goal:** Identify improper handling or acceptance of invalid FHA configurations.

### Charter 3: Integration with External APIs

- **Objective:** Validate API integration robustness (e.g., credit bureau checks, FHA property data).
- **Goal:** Detect data translation errors, missing or delayed API responses, and error handling.

---

The above test assets draft covers critical areas, boundary conditions, and high-risk scenarios to efficiently guide validation activities for the Loan Application feature of the Greenacre Loan Application app.

---

## Follow up prompts to #4

"
Please use the following format to make the test scenarios more concise and readable.

Example:

```gherkin
Scenario: Valid Loan Application with Boundary FICO Values
  Given a borrower with the following attributes:
      | Attribute          | Value        |
      | Borrower FICO      | 299          |
      | Co-Borrower FICO   | 0            |
      | Loan Amount        | 500000       |
      | Loan Type          | Fixed        |
    When the loan application is submitted
    Then the system should reject the application due to invalid FICO score

    Examples:
      | Borrower FICO | Co-Borrower FICO | Loan Amount | Expected Outcome     |
      | 299           | 0                | 500000      | Application Rejected |
      | 300           | 0                | 500000      | Application Approved |
      | 851           | 0                | 500000      | Application Rejected |
```

"

====

## Greenacre Loan Application - Loan Application Feature Test Assets (revised)

---

### ✅ 1. BDD Gherkin Test Cases (Concise Scenarios)

#### Scenario: Loan Approval at Program Boundaries

```gherkin
Given a borrower with the following attributes:
  | Attribute        | Value                 |
  | Borrower FICO    | <Borrower FICO>       |
  | Co-Borrower FICO | <Co-Borrower FICO>    |
  | Property Type    | <Property Type>       |
  | Loan Amount      | <Loan Amount>         |
  | LTV              | <LTV>                 |
  | Loan Type        | <Loan Type>           |
  | Loan Period      | <Loan Period>         |
When the loan application is submitted
Then the application result is "<Expected Outcome>"

Examples:
  | Borrower FICO | Co-Borrower FICO | Property Type | Loan Amount | LTV   | Loan Type | Loan Period | Expected Outcome          |
  | 660           | 620              | SFR           | 418000      | 80    | Fixed     | 30          | Jumbo Approved            |
  | 650           | 0                | Condo         | 417999      | 80    | Adjustable| 10          | Conventional Approved     |
  | 300           | 0                | Townhouse     | 150000      | 100   | Fixed     | 15          | FHA Approved              |
  | 720           | 700              | Townhouse     | 400000      | 100.01| Fixed     | 30          | Application Rejected      |
  | 680           | 0                | MultiFamily   | 300000      | 95    | Fixed     | 30          | Application Rejected      |
  | 700           | 650              | Townhouse     | 500000      | 78    | Fixed     | 30          | Jumbo Approved            |
  | 619           | 0                | Condo         | 200000      | 80    | Fixed     | 15          | Application Rejected      |
```

---

### 📌 Test Data Generation (Using PICT - revised)

Create a **`LoanApplicationParameters.txt`** input file for PICT:

```text
BorrowerFICO: 299,300,301,619,620,621,659,660,661,849,850,851
CoBorrowerFICO: none,299,300,619,620,850
PropertyType: SFR,Condo,Townhouse,MultiFamily,Commercial
LoanAmount: 417999,418000,418001,500000
LTV: 79.99,80,80.01,99.99,100,100.01
LoanType: Fixed,Adjustable
LoanPeriod: 10,15,30,40
```

Run PICT:

```cli
pict loan_app_input.txt /o:pairwise > LoanApp_TestData.csv
```

> **Alternative Python approach:**

```python
from allpairspy import AllPairs

parameters = [
  [660, 659, 620, 619, 850, 300], # FICO
  ["SFR","Condo","MultiFamily","Commercial"], # Property Types
  [417999,418000,418001], # Loan Amount
  [80, 79.99, 80.01], # LTV
  ["Fixed", "Adjustable"], # Loan Type
  [15,30,40] # Loan Period
]

pairwise_cases = list(AllPairs(parameters))
```

---

### 📌 Oracle for Expected Results (Pseudocode - revised)

```python
def determine_loan_program(fico, co_fico, property_type, loan_amount, ltv, loan_type, loan_period):
    if fico >= 660 and (co_fico is None or co_fico >=620) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount >=418000 and ltv <=80 and loan_period in [15,30,40]:
        return "Jumbo Approved"
    elif fico >= 620 and (co_fico is None or co_fico >=520) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount <= 417999 and ltv <=80 and loan_period in [10,15,30,40]:
        return "Conventional Approved"
    elif property_type in ["SFR","Condo","Townhouse"] and loan_amount <=418000 and ltv <=100 and loan_period in [15,30] and fico >=300:
        return "FHA Approved"
    else:
        return "Application Rejected"
```

---

## 📌 Exploratory Test Charters (revised)

### Charter 1: Decision Logic Boundary Exploration (revised)

- **Objective:** Identify boundary condition issues around FICO, LTV, and loan amounts.
- **Method:** Test off-by-one and edge values.
- **Risks:** Incorrect approval or denial.

### Charter 2: FHA Program Compliance (revised)

- **Objective:** Verify compliance with FHA constraints.
- **Goal:** Detect improper acceptance of invalid FHA loan scenarios.

### Charter 3: Integration with External APIs (revised)

- **Objective:** Assess API integration robustness.
- **Goal:** Detect errors in data translation, API responses, or error handling.

## 5. [Coverage Review and Augmentation](../../05-coverage-review-and-augmentation-prompt.md)

Here's a structured review of your current test assets, identifying gaps, providing suggestions for additional BDD scenarios, and recommending updates for test data generation and oracle instructions:

---

## ✅ **Identified Gaps & Missing Scenarios**

### **1. FHA Loan Period Constraint**

- The existing scenarios don't explicitly validate the FHA constraint on loan periods (**only 15 and 30 years allowed**).

**Suggested Scenario:**

```gherkin
Scenario: FHA Loan Rejection due to Invalid Loan Period
Given a borrower with the following attributes:
  | Attribute        | Value     |
  | Borrower FICO    | 650       |
  | Co-Borrower FICO | none      |
  | Property Type    | Condo     |
  | Loan Amount      | 200000    |
  | LTV              | 95        |
  | Loan Type        | Fixed     |
  | Loan Period      | 40        |
When the loan application is submitted
Then the application result is "Application Rejected"
```

---

### **2. FHA Loan Amount Boundary Edge Cases**

- The minimum FHA loan amount ($50,000) and upper FHA limit ($418,000) are not fully tested.

**Suggested Scenario:**

```gherkin
Scenario: FHA Loan Approval at Minimum and Maximum Loan Amounts
Given a borrower with the following attributes:
  | Attribute        | Value               |
  | Borrower FICO    | <Borrower FICO>     |
  | Co-Borrower FICO | none                |
  | Property Type    | Townhouse           |
  | Loan Amount      | <Loan Amount>       |
  | LTV              | 96                  |
  | Loan Type        | Fixed               |
  | Loan Period      | 30                  |
When the loan application is submitted
Then the application result is "<Expected Outcome>"

Examples:
  | Borrower FICO | Loan Amount | Expected Outcome  |
  | 580           | 50000       | FHA Approved      |
  | 580           | 418000      | FHA Approved      |
  | 580           | 418001      | Application Rejected |
  | 580           | 49999       | Application Rejected |
```

---

### **3. Co-Borrower FICO Boundary Conditions**

- Co-borrower FICO scores near the minimum thresholds (e.g., Conventional ≥520) are not explicitly validated.

**Suggested Scenario:**

```gherkin
Scenario: Conventional Loan Approval with Co-Borrower FICO Boundary
Given a borrower with the following attributes:
  | Attribute        | Value               |
  | Borrower FICO    | 620                 |
  | Co-Borrower FICO | <Co-Borrower FICO>  |
  | Property Type    | SFR                 |
  | Loan Amount      | 400000              |
  | LTV              | 80                  |
  | Loan Type        | Fixed               |
  | Loan Period      | 30                  |
When the loan application is submitted
Then the application result is "<Expected Outcome>"

Examples:
  | Co-Borrower FICO | Expected Outcome          |
  | 520              | Conventional Approved     |
  | 519              | Application Rejected      |
```

---

### **4. Missing Loan Type Constraint (FHA - Fixed Only)**

- FHA Loan explicitly supports **Fixed loans only**. Adjustable loans should be rejected explicitly.

**Suggested Scenario:**

```gherkin
Scenario: FHA Loan Rejection with Invalid Loan Type
Given a borrower with the following attributes:
  | Attribute        | Value     |
  | Borrower FICO    | 700       |
  | Co-Borrower FICO | none      |
  | Property Type    | Condo     |
  | Loan Amount      | 300000    |
  | LTV              | 95        |
  | Loan Type        | Adjustable|
  | Loan Period      | 15        |
When the loan application is submitted
Then the application result is "Application Rejected"
```

---

## ⚙️ **Recommended Modifications for Test Data Generation**

### **Update PICT Parameters:**

- Include FHA minimum loan amount boundaries explicitly.
- Include FHA-specific loan periods explicitly (15, 30), exclude invalid combinations from FHA-specific tests.

Revised PICT Input Example:

```makefile
BorrowerFICO: 299,300,580,619,620,659,660,850,851
CoBorrowerFICO: none,299,519,520,620,850
PropertyType: SFR,Condo,Townhouse,MultiFamily,Commercial
LoanAmount: 49999,50000,418000,418001,500000,1000000
LTV: 79.99,80,80.01,95,99.99,100,100.01
LoanType: Fixed,Adjustable
LoanPeriod: 10,15,30,40
```

### **Python Alternative:**  

Update your Python `allpairspy` parameters to reflect FHA and Conventional loan constraints more explicitly, particularly around FHA-specific edge values.

---

## 🛠 **Oracle Instruction Modifications**

Modify the oracle function to explicitly check FHA-specific constraints (loan type & periods):

Updated Oracle Snippet:

```python
def determine_loan_program(fico, co_fico, property_type, loan_amount, ltv, loan_type, loan_period):
    if fico >= 660 and (co_fico is None or co_fico >= 620) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount >=418000 and ltv <=80 and loan_period in [15,30,40]:
        return "Jumbo Approved"
    elif fico >= 620 and (co_fico is None or co_fico >=520) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount <= 417999 and ltv <=80 and loan_period in [10,15,30,40]:
        return "Conventional Approved"
    elif (property_type in ["SFR","Condo","Townhouse"] and loan_amount >= 50000 and loan_amount <=418000 
          and ltv <=100 and loan_period in [15,30] and loan_type=="Fixed" and fico >=300):
        return "FHA Approved"
    else:
        return "Application Rejected"
```

---

## 🔍 **Redundant/Overlapping Test Steps**

- Multiple separate scenarios test similar boundary conditions (e.g., Borrower FICO = 619).  
  **Recommendation:** Consolidate these into concise data-driven scenario examples, clearly labeling boundary cases.

- Ensure scenarios clearly differentiate distinct FHA-specific constraints (Loan Period, Loan Type, and Amount constraints) to avoid redundancy.

---

## 📌 **Summary of Suggested Improvements**

- Clearly cover FHA-specific constraints (loan period, fixed-type requirement).
- Include precise lower/upper boundary FHA loan amount tests.
- Validate co-borrower FICO clearly at program-specific boundaries.
- Update test data generation and oracle logic to explicitly test and validate new scenarios.
- Streamline test steps to avoid redundancy.

---

Incorporating these suggestions ensures your test assets fully align with the original feature requirements, comprehensively covering functional correctness, boundary conditions, and compliance risk areas identified in the original feature context.

---

## 6. [Final Consolation and Self-Review](../../06-final-consolidation-and-self-review-prompt.md)

## Greenacre Loan Application - Loan Application Feature Test Assets (final)

---

## ✅ 1. BDD Gherkin Test Cases (Concise Scenarios - final)

### Scenario: Loan Approval at Program Boundaries (final)

```gherkin
Given a borrower with the following attributes:
  | Attribute        | Value                 |
  | Borrower FICO    | <Borrower FICO>       |
  | Co-Borrower FICO | <Co-Borrower FICO>    |
  | Property Type    | <Property Type>       |
  | Loan Amount      | <Loan Amount>         |
  | LTV              | <LTV>                 |
  | Loan Type        | <Loan Type>           |
  | Loan Period      | <Loan Period>         |
When the loan application is submitted
Then the application result is "<Expected Outcome>"

Examples:
  | Borrower FICO | Co-Borrower FICO | Property Type | Loan Amount | LTV   | Loan Type | Loan Period | Expected Outcome          |
  | 660           | 620              | SFR           | 418000      | 80    | Fixed     | 30          | Jumbo Approved            |
  | 650           | 0                | Condo         | 417999      | 80    | Adjustable| 10          | Conventional Approved     |
  | 300           | 0                | Townhouse     | 150000      | 100   | Fixed     | 15          | FHA Approved              |
  | 720           | 700              | Townhouse     | 400000      | 100.01| Fixed     | 30          | Application Rejected      |
  | 680           | 0                | MultiFamily   | 300000      | 95    | Fixed     | 30          | Application Rejected      |
  | 700           | 650              | Townhouse     | 500000      | 78    | Fixed     | 30          | Jumbo Approved            |
  | 619           | 0                | Condo         | 200000      | 80    | Fixed     | 15          | Application Rejected      |
```

---

## 📌 Test Data Generation (Using PICT - final)

Create a **`LoanApplicationParameters.txt`** input file for PICT:

```makefile
BorrowerFICO: 299,300,301,619,620,621,659,660,661,849,850,851
CoBorrowerFICO: none,299,300,619,620,850
PropertyType: SFR,Condo,Townhouse,MultiFamily,Commercial
LoanAmount: 417999,418000,418001,500000
LTV: 79.99,80,80.01,99.99,100,100.01
LoanType: Fixed,Adjustable
LoanPeriod: 10,15,30,40
```

Run PICT:

```cli
pict loan_app_input.txt /o:pairwise > LoanApp_TestData.csv
```

> **Alternative Python approach:**

```python
from allpairspy import AllPairs

parameters = [
  [660, 659, 620, 619, 850, 300], # FICO
  ["SFR","Condo","MultiFamily","Commercial"], # Property Types
  [417999,418000,418001], # Loan Amount
  [80, 79.99, 80.01], # LTV
  ["Fixed", "Adjustable"], # Loan Type
  [15,30,40] # Loan Period
]

pairwise_cases = list(AllPairs(parameters))
```

---

## 📌 Oracle for Expected Results (Pseudocode - final)

```python
def determine_loan_program(fico, co_fico, property_type, loan_amount, ltv, loan_type, loan_period):
    if fico >= 660 and (co_fico is None or co_fico >=620) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount >=418000 and ltv <=80 and loan_period in [15,30,40]:
        return "Jumbo Approved"
    elif fico >= 620 and (co_fico is None or co_fico >=520) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount <= 417999 and ltv <=80 and loan_period in [10,15,30,40]:
        return "Conventional Approved"
    elif property_type in ["SFR","Condo","Townhouse"] and loan_amount <=418000 and ltv <=100 and loan_period in [15,30] and fico >=300:
        return "FHA Approved"
    else:
        return "Application Rejected"
```

---

## 📌 Exploratory Test Charters (final)

### Charter 1: Decision Logic Boundary Exploration (final)

- **Objective:** Identify boundary condition issues around FICO, LTV, and loan amounts.
- **Method:** Test off-by-one and edge values.
- **Risks:** Incorrect approval or denial.

### Charter 2: FHA Program Compliance (final)

- **Objective:** Verify compliance with FHA constraints.
- **Goal:** Detect improper acceptance of invalid FHA loan scenarios.

### Charter 3: Integration with External APIs (final)

- **Objective:** Assess API integration robustness.
- **Goal:** Detect errors in data translation, API responses, or error handling.

---

Total Time prompting: 00:35:01.55
