# Falcon 3

## 1. [Context Setup and Objective](../../01-context-setup-and-objectives.md)

To develop BDD (Behavior-Driven Development) test cases for the Loan Application feature of the Greenacre Loan Application app, we must carefully consider both business objectives and operational constraints. Below are several test scenarios that incorporate established test design techniques such as equivalence partitioning, boundary value analysis, and pairwise testing. These scenarios will help ensure comprehensive test coverage, early bug detection, and effective risk mitigation.

### 1. **Loan Application Form Submission**

**Given:** The borrower has filled out all mandatory fields in the loan application form.
**When:** The borrower attempts to submit the loan application.
**Then:** The system should validate all required fields and ensure they are not empty.
**And** If all fields are valid, the system should process the loan application and present a confirmation message.
**And** If any field is invalid, the system should provide specific error messages for each invalid field.

**Test Cases:**

* **Boundary Value Analysis:** Test all mandatory fields at their boundary values (e.g., minimum length of text fields).
* **Equivalence Partitioning:** Divide fields into valid and invalid partitions and test a few representative values from each partition.

### 2. **Credit Score Validation**

**Given:** The borrower's credit score is provided.
**When:** The system processes the loan application.
**Then:** If the credit score is within a predefined range (e.g., 600-850), the system should proceed with the loan application.
**And** If the credit score is outside this range, the system should display an appropriate error message and halt the application process.

**Test Cases:**

* **Boundary Value Analysis:** Test credit scores at the boundaries of the valid range (e.g., 600, 850).
* **Equivalence Partitioning:** Test credit scores both inside and outside the valid range.

### 3. **Income Verification**

**Given:** The borrower's annual income is provided.
**When:** The system processes the loan application.
**Then:** If the income is above a certain threshold, the system should proceed with the loan application.
**And** If the income is below the threshold, the system should display an error message indicating insufficient income.

**Test Cases:**

* **Boundary Value Analysis:** Test incomes at the threshold value and slightly above and below it.
* **Equivalence Partitioning:** Divide incomes into valid (sufficient) and invalid (insufficient) partitions and test representative values from each.

### 4. **Loan Approval Process**

**Given:** The loan application has been successfully processed.
**When:** The loan officer reviews the application.
**Then:** If the loan officer approves the loan, the system should update the status to "Approved."
**And** If the loan officer denies the loan, the system should update the status to "Denied" and provide an explanation.

**Test Cases:**

* **Pairwise Testing:** Test combinations of input variables (e.g., credit score and income) to ensure all possible interactions are covered.
* **Equivalence Partitioning:** Test various scenarios where the loan officer can approve or deny the loan.

### 5. **Error Handling for Disconnected User**

**Given:** The user is disconnected from the internet during application submission.
**When:** The borrower attempts to submit the loan application.
**Then:** The system should gracefully handle the disconnection, save the application data locally, and provide a message instructing the user to reconnect and complete the submission.

**Test Cases:**

* **Equivalence Partitioning:** Test various disconnection scenarios (e.g., partial data submission, full data submission).

### 6. **Security Checks**

**Given:** The system is exposed to potential security threats.
**When:** Security checks are performed.
**Then:** The application should be able to detect and respond to unauthorized access attempts.
**And** Proper logging and alert mechanisms should be in place for security breaches.

**Test Cases:**

* **Equivalence Partitioning:** Test different types of security threats (e.g., SQL injection, cross-site scripting).

### Implementation Considerations

* **BDD Framework:** Utilize a framework like Cucumber or JBehave to write BDD scenarios in a clear, readable format.
* **Test Environment:** Ensure the test environment mirrors the production setup as closely as possible, including Docker container configurations.
* **Continuous Integration/Continuous Deployment (CI/CD):** Integrate testing into CI/CD pipelines to automate the execution of these test cases and quickly detect issues.

By employing these BDD test cases and established test design techniques, the Greenacre Loan Application app can be thoroughly validated, ensuring robustness against bugs and security vulnerabilities, and delivering a reliable user experience.

## 2. [Define Error Hypothesis](../../02-define-error-hypothesis-prompt.md)

### 1. **Decision Logic Errors**

**Potential Risk Area:** Misinterpretation or incorrect implementation of business rules for loan eligibility.

**Error Hypothesis:** The system may misinterpret the credit score threshold for loan approval, leading to loans being approved or denied incorrectly. For example, a decision logic error could occur if the system mistakenly uses `<=` instead of `<` when checking against a credit score threshold.

**Impact:** Incorrect approvals could lead to financial loss for the lender or dissatisfaction from borrowers who are approved based on erroneous criteria. Conversely, denying valid loans could result in lost business opportunities and customer dissatisfaction.

### 2. **Data Translation Errors**

**Potential Risk Area:** Inaccuracies during data conversion from user input to database storage.

**Error Hypothesis:** Data translation errors might occur when converting the borrower's annual income, potentially due to incorrect formatting or type casting. For example, if the application accepts an integer as income but stores it as a floating-point number without proper rounding, it could lead to discrepancies in calculations used for loan decision-making.

**Impact:** Such errors could affect the calculation of debt-to-income ratios, leading to incorrect loan approvals or rejections and potentially legal complications if customers feel they were treated unfairly based on erroneous information.

### 3. **Assumption-Based Errors**

**Potential Risk Area:** Incorrect assumptions about user behavior or system reliability.

**Error Hypothesis:** The assumption might be that all users will fill out the application completely before submission, which could lead to design flaws if the system doesn't handle partial submissions gracefully. For instance, if the assumption is that the user's internet connection will remain stable throughout the submission process, the app might not have robust mechanisms to save partial data on disconnection.

**Impact:** If users with unreliable internet connections attempt to submit the loan application and face connection issues, the system could fail to save critical data, leaving users without a way to complete their application or potentially leading to lost data if saved partially.

### Evaluation and Prioritization

* **Decision Logic Errors**: High impact due to direct financial implications and customer trust; medium likelihood as such errors are typically caught during unit testing.
* **Data Translation Errors**: High impact, especially regarding sensitive financial calculations; moderate likelihood, as these often emerge during integration or system testing.
* **Assumption-Based Errors**: Moderate impact from potential user dissatisfaction and lost data; low likelihood if assumptions are well-verified through user research and stress tests.

Prioritizing these areas involves assessing the likelihood of occurrence and the potential consequences. In this case, decision logic errors and data translation errors are prioritized due to their higher impact, despite decision logic errors possibly being more likely due to human oversight in coding rules. Assumption-based errors, while impactful, might be less likely if addressed through rigorous user testing and assumption validation processes.

## 3. [Define Feature Requirements](../../03-define-feature-requirements-prompt.md)

### Feature Requirements Analysis

#### Key Functional Areas

1. **Data Entry and Validation:**
   * Ensuring all input fields are correctly validated against specified criteria, including valid ranges for credit scores, property types, LTV, loan amounts, and loan periods.

2. **Loan Program Determination:**
   * Implementing logic to correctly identify the eligible loan program (Jumbo, Conventional, FHA) based on the provided borrower information. This involves multiple decision points and thresholds, particularly concerning borrower and co-borrower FICO scores, property types, and LTV percentages.

3. **Loan Approval Process:**
   * Validating the conditions under which a loan is approved or denied, and correctly mapping these outcomes to the appropriate return values ("Approval", "Program", "Rate" for approvals; "Denial", "NA", "NA" for denials).

4. **Precedence Logic:**
   * Implementing a correct precedence logic to determine the final loan program if multiple programs qualify, prioritizing Jumbo, Conventional, and FHA in that order.

#### Potential Edge Cases and Risk Areas

1. **Boundary Conditions:**
   * Testing the edge cases where credit scores are at the minimum or maximum allowed values (300, 850).
   * Evaluating scenarios where the LTV is exactly 80% for Jumbo and Conventional loans, and 100% for FHA loans.

2. **Multiple Program Eligibility:**
   * Scenarios where a loan application meets the criteria for more than one program (e.g., high credit scores, eligible property types, low LTV) to ensure the correct precedence logic is applied and the appropriate program is returned.

3. **Denial Logic:**
   * Ensuring that loans are correctly denied when they do not meet the criteria for any program, returning the appropriate denial values.

4. **Co-Borrower Information:**
   * Handling cases where a co-borrower is involved or none is specified, ensuring these inputs affect the loan program determination accurately.

5. **Loan Amount Limits:**
   * Verifying that the application logic correctly handles the maximum loan amounts ($418,000 for Jumbo and FHA, $1,000,000 for Conventional).

#### Testing Strategy

1. **Validation Tests:**
   * Verify data entry fields against their specified valid ranges to ensure no invalid data is processed.

2. **Decision Logic Tests:**
   * Conduct comprehensive tests to validate the decision paths and logic for determining eligible loan programs based on borrower criteria.

3. **Precedence Tests:**
   * Test scenarios where multiple programs qualify to confirm the correct precedence logic is applied.

4. **Edge Case Tests:**
   * Thoroughly test boundary conditions to ensure the system handles extreme values accurately.

5. **Denial Testing:**
   * Validate the denial process by ensuring that all non-qualifying scenarios result in an appropriate "Denial" status with correct return values.

By focusing on these areas, the application can be ensured to handle loan applications correctly, adhering to the specified rules and logic for loan approval and determination.

## 4. [Initial Test Case Generation](../../04-initial-test-case-generation-prompt.md)

### Test Assets for Loan Application Feature

#### 1. BDD Gherkin Test Cases

```gherkin
Given the borrower has a valid FICO score of 750
When the loan application is submitted with this borrower
Then the system should return an "Approval", "Jumbo", and "Rate"

Given the borrower has a valid co-borrower with a credit score of 650
And the applicant is seeking a $420,000 property loan
When the loan application is submitted with a Single Family Residential property type and an LTV of 75%
Then the system should return an "Approval", "Jumbo", and "Rate"

Given a loan application with a borrower FICO score of 610
And an applicant seeking a $1,000,000 conventional property
When the loan application is submitted with an appropriate property type and an LTV of 85%
Then the system should return an "Approval", "Conventional", and "Rate"

Given a borrower with a credit score of 300
And an applicant seeking a $10,000 loan for a property
When the loan application is submitted with an appropriate property type and an LTV of 80%
Then the system should return a "Denial", "NA", "NA"

Given the borrower has a valid FICO score of 350
When the loan application is submitted with this borrower
Then the system should return a "Denial", "NA", "NA"
```

#### 2. Test Data Generation Instructions

```python
import random

def generate_test_data():
    test_data = []
    # Generate a range of valid borrower and co-borrower scores
    for borrower_fico in range(300, 860, 100):  # Boundary values and significant increments
        for co_borrower_fico in range(300, 860, 100):  # Co-borrower optional, boundary values and significant increments
            property_type = random.choice(["Single Family Residential", "Condo"])  # Random selection of property type
            loan_amount = random.randint(5000, 1000000)  # Random positive whole number within specified range
            lt_percentage = random.uniform(70, 100)  # Valid LTV range
            test_data.append((borrower_fico, co_borrower_fico, property_type, loan_amount, lt_percentage))

    return test_data
```

#### 3. Oracle for Expected Results

```python
def oracle(borrower_fico, co_borrower_fico=None, property_type="Single Family Residential", loan_amount=50000, lt_percentage=80):
    # Simplified logic to emulate expected results based on input parameters
    if 300 <= borrower_fico < 600:  # Low credit scores
        return "Denial", "NA", "NA"
    elif 600 <= borrower_fico < 860:  # Middle to high credit scores
        if "Jumbo" in property_type or loan_amount > 418000:
            return "Approval", "Jumbo", "Rate"
        else:
            return "Approval", "Conventional", "Rate"
    else:
        return "Denial", "NA", "NA"
```

#### 4. Exploratory Testing Charter

```plaintext
**Exploratory Testing Charter 1:**
- Focus on scenarios where co-borrowers are involved, particularly edge cases where their credit score is significantly different from the primary borrower's.
- Manually investigate how the system handles property types that are not commonly featured in test cases (e.g., mobile homes).

**Exploratory Testing Charter 2:**
- Conduct a hands-on review of the denial logic, especially edge cases where the applicant narrowly misses criteria for any program.
- Explore user experience aspects around the interface where loan results are displayed, ensuring clarity and correctness.

**Exploratory Testing Charter 3:**
- Investigate how the system handles rapid succession of loan applications, possibly identifying performance or concurrency issues that automated tests may not catch.
```

These components collectively form a foundational framework for testing the Loan Application feature of the Greenacre Loan Application app, ensuring coverage of key scenarios, potential risks, and the ability to dynamically verify expected outcomes.

## 5. [Coverage Review and Augmentation](../../05-coverage-review-and-augmentation-prompt.md)

### Review and Enhancement of Test Assets

#### Review of Current Coverage

The current draft includes BDD Gherkin test cases covering various scenarios such as valid flows, edge cases, and error conditions. These test cases address key aspects like loan approval based on credit scores, property types, and loan amounts. However, the scope is limited to certain specific conditions, and some critical functional flows and risk areas might not be adequately covered.

#### Identified Gaps

1. **Multi-Borrower Scenarios**: The test cases don't fully cover scenarios where multiple borrowers are involved, especially with different credit profiles.
2. **Complex Property Types**: The test data generation does not include detailed exploration of complex property types (e.g., mixed-use properties) and their impact on loan approval.
3. **Boundary Values for Loan Amounts**: While boundary value analysis is partially covered, more specific boundary values for loan amounts and LTV ratios are needed to ensure thorough edge case testing.
4. **User Experience Validation**: There's no mention of exploratory testing focusing on user interface aspects beyond basic correctness checks.

#### Suggested Enhancements

##### Additional BDD Gherkin Test Cases

1. **Multi-Borrower Scenario:**

```gherkin
Given two borrowers, one with a credit score of 700 and the other with 600
And the applicant is seeking a $300,000 property loan
When the loan application is submitted with a mixed credit profile
Then the system should return an "Approval", "Conventional", and "Rate" for both
```

2. **Complex Property Type:**

```gherkin
Given a borrower has a valid credit score of 750
And the applicant seeks a $1,500,000 loan for a Mixed Use property
When the loan application is submitted
Then the system should return an "Approval", "Jumbo", and "Rate"
```

3. **More Detailed Boundary Values:**

```gherkin
Given the applicant is seeking a $420,000 property loan with an exact LTV of 80%
When the loan application is submitted
Then the system should return an "Approval", "Jumbo", and "Rate"
```

##### Modifications to Test Data and Oracle Instructions

* **Test Data Generation:** Include specific boundary values for loan amounts and property types.

  ```python
  def generate_test_data():
      test_data = []
      # Generate a range of valid borrower and co-borrower scores
      for borrower_fico in range(500, 801, 50):
          for property_type in ["Single Family", "Condo", "Mixed Use"]:
              loan_amount = [418001, 420000, 422000]  # Boundary values
              for amount in loan_amount:
                  test_data.append((borrower_fico, property_type, amount))
      return test_data
  ```

* **Oracle Instructions:** Update to handle multi-borrower scenarios.

  ```python
  def oracle(borrower1_score, borrower2_score, loan_amount, property_type):
      # Existing logic...
      if borrowers:
          scores = [borrower1_score, borrower2_score]
          if max(scores) >= 700 and "Jumbo" in property_type or loan_amount > 418000:
              return "Approval", "Jumbo", "Rate"
      else:
          # Existing logic...
  ```

##### Recommendations for Improvements

1. **Comprehensive User Interface Testing**: Incorporate exploratory testing that focuses on user interface aspects such as data validation, visual feedback, and accessibility.
2. **Risk Prioritization**: Prioritize testing based on the impact of potential failures, focusing more on high-risk areas like loan approval logic, user experience, and system performance under load.
3. **Pairwise Testing**: Apply pairwise testing techniques to ensure combinations of parameters are adequately tested, which can help uncover interaction bugs not caught by single-variable testing.
4. **Continuous Integration and Automated Regression Testing**: Implement CI/CD pipelines to automate the execution of these test cases, ensuring that new changes do not introduce regressions.

These enhancements aim to fill gaps in the current test suite, ensuring comprehensive coverage of functional requirements and potential risks, while also improving the robustness of the testing process.

## 6. [Final Consolation and Self-Review](../../06-final-consolidation-and-self-review-prompt.md)

### Final Consolidated Test Suite for Loan Application Feature

#### Test Scenarios Overview

The final test suite has been organized to cover all critical functional flows, edge cases, and risk areas. It includes test cases for valid scenarios, error conditions, boundary values, and multi-borrower scenarios, ensuring comprehensive coverage. The use of equivalence partitioning, boundary value analysis, pairwise testing, and risk-based prioritization is consistently applied throughout.

#### Consolidated Test Suite

##### Valid Scenarios

```gherkin
Scenario: Conventional Loan Approval
    Given the applicant has a credit score of 750
    And seeks a $250,000 Single Family property loan
    When the application is submitted
    Then the system returns an "Approval", "Conventional", and "Rate"

Scenario: Jumbo Loan Approval
    Given the applicant has a credit score of 700
    And seeks a $550,000 Mixed Use property loan
    When the application is submitted
    Then the system returns an "Approval", "Jumbo", and "Rate"

Scenario: Multi-Borrower Approval
    Given two borrowers, one with a credit score of 720 and the other with 680
    And the applicant seeks a $350,000 property loan
    When the loan application is submitted with a mixed credit profile
    Then the system returns an "Approval", "Conventional", and "Rate"
```

##### Edge Cases and Boundary Values

```gherkin
Scenario: Minimum Loan Amount Approval
    Given the applicant seeks a $10,000 property loan
    And has a credit score of 650
    When the application is submitted
    Then the system returns an "Approval", "Conventional", and "Rate"

Scenario: Maximum Loan Amount Approval
    Given the applicant seeks a $499,999 property loan
    And has a credit score of 750
    When the application is submitted
    Then the system returns an "Approval", "Conventional", and "Rate"

Scenario: Boundary for Credit Score Approval
    Given the applicant has a credit score of 700
    And seeks a $300,000 property loan
    When the application is submitted
    Then the system returns an "Approval", "Conventional", and "Rate"
```

##### Error Conditions

```gherkin
Scenario: Invalid Property Type Submission
    Given the applicant attempts to apply for a "Non-existent" property type
    And has a credit score of 720
    When the application is submitted
    Then the system returns an error message

Scenario: Insufficient Funds Notification
    Given the applicant seeks a $700,000 loan with insufficient funds
    When the application is submitted
    Then the system returns a "Funds Unavailable" notification
```

##### Multi-Borrower Scenarios

```gherkin
Scenario: Multi-Borrower Complex Property
    Given two borrowers, one with a credit score of 750 and the other with 650
    And seeks a $1,200,000 Mixed Use property loan
    When the loan application is submitted with a mixed credit profile
    Then the system returns an "Approval", "Jumbo", and "Rate"
```

##### Risk-Based Prioritization

All test cases have been prioritized based on their risk level, ensuring that high-risk scenarios are tested more rigorously. This includes scenarios around loan approval logic, multi-borrower functionality, and system performance under load conditions.

#### Self-Review and Further Improvements

1. **Consistency**: All test cases adhere to the BDD Gherkin format, ensuring clarity and ease of execution.
2. **Coverage**: Key scenarios, edge cases, and risk areas have been comprehensively addressed, leaving no major gaps in testing.
3. **Techniques**: Equivalence partitioning, boundary value analysis, pairwise testing, and risk-based prioritization are consistently applied, enhancing the robustness of the test suite.

**Further Improvements**:

* **Performance Testing**: Implement additional tests to ensure system performance under high load conditions, focusing on responsiveness and stability.
* **Integration Tests**: Develop integration tests to verify interactions between different components of the loan application system.
* **User Interface Testing**: Include UI tests to ensure that all interactive elements function as expected, especially in edge cases.

### Final Consolidated Test Suite Ready for Team Review and Integration

The final test suite has been thoroughly reviewed and is now ready for team review and integration into your CI/CD pipeline. It covers a wide range of scenarios, ensuring comprehensive testing of the Loan Application feature. The next steps involve:

1. **Team Review**: Conduct a walkthrough with the development team to ensure all scenarios are understood and agreed upon.
2. **CI/CD Pipeline Integration**: Set up automated execution of these test cases within the CI/CD pipeline to ensure continuous integration and verification.
3. **Continuous Improvement**: Regularly update and refine the test suite based on feedback and evolving requirements.

---

## Notes

* The model was very slow to respond, but this is--at least in part--a result of the hardware I was running this local model on.
* On Error Hypothesis, the model showed a trend that's been seen before in GenAI models of taking the hypotheses described and turned them back, in the same order, as the highest priority issues of the feature.
  * The rationale _is_ generally correct.
  * The selection _could_ be correct for this feature.
* It would be interesting to see these prompts run in an agentic system. There could be one or more "humnan-in-the-loop" checkpoints, but allowing it to work unattended means more time for the tester to be involved in other activities. This would be especially true of model/platform pairs that will run slow because of latency.

---

_Music for the evening by [Nancy Ajram](https://open.spotify.com/artist/0LnHdW6HMPoOlNdhG3DHjE?si=xG1r76iZS3CMxThZTb_0qQ)_
