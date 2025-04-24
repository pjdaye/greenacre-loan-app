# Claude 3.7 Sonnet

## 1. [Context Setup and Objective](../../01-context-setup-and-objectives.md)

I'll create comprehensive BDD test cases for the Greenacre Loan Application feature. Let me approach this systematically to ensure we cover all critical aspects.

### BDD Test Cases for Greenacre Loan Application Feature

#### Feature: Loan Application Submission

##### Background

```gherkin
Given the Greenacre Loan Application system is operational
And I am logged into the application
```

###### Scenario: Successful loan application submission with minimum required fields

```gherkin
Given I am a registered borrower
When I navigate to the "New Loan Application" page
And I complete the following required fields:
  | Field             | Value                 |
  | Full Name         | John Smith            |
  | Social Security # | 123-45-6789           |
  | Annual Income     | 75000                 |
  | Loan Amount       | 250000                |
  | Loan Purpose      | Home Purchase         |
  | Property Address  | 123 Main St, City, ST |
And I click the "Submit Application" button
Then I should see a confirmation message "Application #12345 submitted successfully"
And my application should appear in the "Pending Review" status in my dashboard
And the loan officer should receive a notification about the new application
```

###### Scenario: Application submission validation - Missing required fields

```gherkin
Given I am a registered borrower
When I navigate to the "New Loan Application" page
And I complete only the following fields:
  | Field         | Value      |
  | Full Name     | Jane Doe   |
  | Annual Income | 80000      |
And I click the "Submit Application" button
Then I should see error messages for the missing required fields:
  | Field             | Error Message               |
  | Social Security # | This field is required      |
  | Loan Amount       | Please enter a loan amount  |
  | Loan Purpose      | Please select a loan purpose|
  | Property Address  | Property address is required|
And the application should not be submitted
```

###### Scenario: Boundary value analysis - Loan amount within acceptable limits

```gherkin
Given I am a registered borrower
When I navigate to the "New Loan Application" page
And I complete all required fields with valid data
And I enter a loan amount of "$5,000" (minimum allowable)
And I click the "Submit Application" button
Then I should see a confirmation message that the application was submitted successfully

When I start a new application
And I complete all required fields with valid data
And I enter a loan amount of "$4,999" (below minimum)
And I click the "Submit Application" button
Then I should see an error message "Loan amount must be at least $5,000"

When I start a new application
And I complete all required fields with valid data
And I enter a loan amount of "$2,500,000" (maximum allowable)
And I click the "Submit Application" button
Then I should see a confirmation message that the application was submitted successfully

When I start a new application
And I complete all required fields with valid data
And I enter a loan amount of "$2,500,001" (above maximum)
And I click the "Submit Application" button
Then I should see an error message "Loan amount cannot exceed $2,500,000"
```

#### Feature: Loan Application Review by Loan Officer

##### Scenario: Loan officer reviews and approves a complete application

```gherkin
Given I am logged in as a loan officer
When I navigate to the "Pending Applications" queue
And I select application #12345 for review
Then I should see all the borrower's submitted information
And I should see options to "Approve", "Deny", or "Request Additional Information"

When I review the credit report showing a score of 750
And the debt-to-income ratio is calculated as 28%
And I select "Approve"
And I enter "Good credit history and acceptable DTI ratio" in the comments field
And I click "Submit Decision"
Then the application status should change to "Approved"
And the borrower should receive an email notification about the approval
And the application should move to the "Approved Applications" queue
```

##### Scenario: Loan officer requests additional information

```gherkin
Given I am logged in as a loan officer
When I navigate to the "Pending Applications" queue
And I select application #12345 for review
And I find that employment verification documents are missing
And I select "Request Additional Information"
And I specify "Please upload your last 2 pay stubs for employment verification"
And I click "Submit Request"
Then the application status should change to "Additional Information Requested"
And the borrower should receive an email notification with the specific request
And the application should move to the "Awaiting Information" queue
```

#### Feature: Document Upload and Management

##### Scenario: Borrower successfully uploads required documents

```gherkin
Given I am logged in as a borrower
And I have an application with status "Additional Information Requested"
When I navigate to my application details
And I see the request for "Please upload your last 2 pay stubs"
And I click on "Upload Documents"
And I select files "paystub1.pdf" and "paystub2.pdf" from my computer
And I assign document type "Pay Stub" to both files
And I click "Upload"
Then I should see a confirmation message "2 documents uploaded successfully"
And the documents should appear in the "Uploaded Documents" section
And the application status should change to "Pending Review"
And the loan officer should receive a notification about the uploaded documents
```

##### Scenario: Document upload with invalid file type

```gherkin
Given I am logged in as a borrower
When I navigate to my application details
And I click on "Upload Documents"
And I select file "bankstatement.exe" from my computer
And I click "Upload"
Then I should see an error message "Invalid file type. Please upload PDF, JPG, or PNG files only"
And the document should not be uploaded
```

#### Feature: Loan Application Status Tracking

##### Scenario: Borrower views application status and history

```gherkin
Given I am logged in as a borrower
And I have submitted application #12345
When I navigate to "My Applications" dashboard
And I select application #12345
Then I should see the current status of my application
And I should see a timeline with all status changes and their timestamps
And I should see all communications exchanged regarding the application
And I should see all documents I have uploaded
```

#### Feature: Performance and Load Testing Scenarios

##### Scenario: System handles multiple concurrent applications

```gherkin
Given the system is under normal operational load
When 50 borrowers simultaneously submit loan applications
Then all applications should be processed without errors
And the average response time should be less than 3 seconds
And no application data should be lost or corrupted
```

##### Scenario: System recovers from network interruption

```gherkin
Given I am a borrower completing a loan application
When a network interruption occurs during submission
And the connection is restored within 30 seconds
And I attempt to submit again
Then my application should be successfully submitted
And no duplicate applications should be created
And no data should be lost from my form
```

#### Feature: Security Testing Scenarios

##### Scenario: Sensitive information is properly protected

```gherkin
Given I am logged in as a borrower
When I submit an application with my Social Security Number
Then the SSN should be masked on screen after entry
And the SSN should be encrypted in the database
And the SSN should be transmitted securely over HTTPS

When I log out and log in as a different borrower
Then I should not be able to access the first borrower's application or personal information
```

These test cases incorporate several test design techniques:

1. **Equivalence Partitioning**: Testing representative values from various data classes (e.g., valid and invalid loan amounts)
2. **Boundary Value Analysis**: Testing at the edges of acceptable ranges (minimum and maximum loan amounts)
3. **Decision Table Testing**: Covering different combinations of inputs that lead to different decisions (approval criteria)
4. **State Transition Testing**: Verifying the application moves correctly through various states (submitted → under review → approved/denied)
5. **Load Testing**: Verifying system behavior under concurrent usage

Would you like me to expand on any particular scenario or add additional test cases for specific aspects of the loan application process?

## 2. [Define Error Hypothesis](../../02-define-error-hypothesis-prompt.md)

### Error Hypothesis Analysis for Greenacre Loan Application

Based on my experience with loan processing systems, I've identified several error hypotheses specific to the Greenacre Loan Application, considering both its financial domain and technical architecture (React frontend with Node.js/Express backend in Docker containers).

#### Comprehensive Error Hypotheses

##### Data Integrity and Validation

1. **Complex Input Validation**: Financial applications require extensive validation of numerical inputs, potentially creating gaps in validation rules
2. **Format Inconsistencies**: SSN, phone numbers, and currency values may be entered in various formats requiring normalization
3. **Cross-field Dependencies**: Validation rules that depend on multiple fields (e.g., debt-to-income calculations) may have edge cases

##### State Management

1. **Incomplete State Transitions**: Application status may become "stuck" due to interrupted workflows
2. **Race Conditions**: Concurrent updates between loan officers and borrowers may cause data inconsistencies
3. **Orphaned Documents**: Uploaded documents may lose association with applications during system errors

##### Integration Points

1. **Third-Party API Failures**: Credit check services or verification systems may respond with unexpected formats
2. **Database Transaction Boundaries**: Multi-step processes may leave data in inconsistent states if transactions aren't properly managed
3. **Containerization Issues**: Docker deployment may create environment-specific behaviors not present in development

##### Security and Access Control

1. **Permission Leakage**: Loan officers might access applications outside their jurisdiction due to authorization gaps
2. **Data Exposure**: Sensitive financial information might be inadequately masked in logs or responses
3. **Session Management**: Extended user sessions during lengthy application processes may create security vulnerabilities

##### UI/UX Considerations

1. **Responsive Design Failures**: Complex forms may break on mobile devices or unusual viewport sizes
2. **Asynchronous Updates**: Real-time status updates may not properly reflect changes made by other users
3. **Browser Compatibility**: Financial calculation functions may behave differently across browsers

#### Top Three Risk Areas (Ranked by Likelihood and Impact)

##### 1. Cross-System Data Consistency Failures

###### Likelihood: HIGH | Impact: CRITICAL

The loan application process involves multiple stages and touchpoints between different system components (frontend, backend, document storage, notification systems). Each transition presents opportunities for data inconsistency.

**Specific Risks:**

- Document uploads may succeed while metadata updates fail, creating orphaned documents
- Application status may update in the database but fail to trigger notifications
- Partial form submissions may create incomplete application records

**Test Design Implications:**

- Apply equivalence partitioning to test various integration pathways
- Design tests specifically targeting system recovery after partial failures
- Implement state transition testing with deliberate interruptions at critical junctures

##### 2. Calculation and Business Rule Accuracy

###### Likelihood: MEDIUM | Impact: CRITICAL

Financial applications involve complex calculations and business rules that directly impact approval decisions and loan terms.

**Specific Risks:**

- Debt-to-income ratios may be calculated incorrectly at boundary conditions
- Rounding errors in financial calculations may compound across multiple calculations
- Currency formatting and parsing may introduce subtle errors in loan amount processing

**Test Design Implications:**

- Apply boundary value analysis to financial inputs and calculated values
- Test with deliberately challenging numerical values (very large loans, income near thresholds)
- Verify calculation consistency across different application paths and user roles

##### 3. Concurrent Access Conflicts

###### Likelihood: MEDIUM | Impact: HIGH

The distributed nature of the application (Docker containers) combined with multiple user roles accessing the same application data creates potential for race conditions.

**Specific Risks:**

- Loan officers reviewing applications simultaneously may overwrite each other's assessments
- Borrowers uploading documents while loan officers are reviewing may create inconsistent views
- System performance may degrade under load, leading to timeout errors during critical operations

**Test Design Implications:**

- Design pairwise testing scenarios with multiple users interacting with the same application
- Test recovery processes after timeout or connection failures
- Implement performance testing focused on concurrent access patterns

These prioritized risk areas should guide the development of additional targeted test scenarios beyond the standard BDD cases already developed.

Would you like me to develop specific test scenarios targeting any of these high-risk areas? Or would you prefer additional analysis on other aspects of the error hypotheses?

## 3. [Define Feature Requirements](../../03-define-feature-requirements-prompt.md)

### Loan Application Feature Analysis

After reviewing the provided requirements, here's a concise analysis of the critical features and testing considerations for the Greenacre Loan Application's loan submission functionality:

#### Key Functional Areas

1. **Loan Application Input Processing**
   - Collection and validation of 7 critical data points with specific value ranges
   - Processing of optional co-borrower information

2. **Loan Program Eligibility Determination**
   - Complex business logic to evaluate eligibility across three loan programs
   - Precedence-based decision making when multiple programs apply

3. **Response Generation**
   - Approval with program and rate information
   - Denial with appropriate "NA" values

#### Critical Testing Considerations

##### Boundary Conditions and Edge Cases

1. **Parameter Boundaries**
   - FICO scores at critical thresholds (620, 660 boundaries)
   - Loan amounts at program transition points ($418,000)
   - LTV percentages at 80% and 100% thresholds

2. **Program Eligibility Overlaps**
   - Applications qualifying for multiple programs must correctly follow precedence rules
   - Applications at the edge of qualification for higher-precedence programs

3. **Co-Borrower Scenarios**
   - Applications with and without co-borrowers
   - Applications where co-borrower FICO affects eligibility

### Risk Areas Requiring Special Attention

1. **Complex Eligibility Logic**
   - The interconnected nature of the criteria creates numerous decision paths
   - High risk of logic errors in boundary conditions

2. **Property Type Restrictions**
   - FHA does not allow Commercial or Multi-Family properties
   - These restrictions create special cases for denial

3. **Loan Term Restrictions**
   - Each program has different allowed loan periods
   - FHA specifically restricts loan type to Fixed only

4. **Data Type and Format Validation**
   - Currency values, percentages, and enumerated types need precise validation
   - Potential for calculation errors in LTV determination

## Testing Approach Recommendations

1. **Decision Table Testing**
   - Create comprehensive tables covering combinations of criteria
   - Focus on boundary transitions between approval and denial

2. **Equivalence Partitioning**
   - Group inputs into classes that should behave similarly
   - Particular attention to FICO score ranges and loan amount ranges

3. **Pairwise Testing**
   - Critical for testing interactions between parameters
   - Especially important for co-borrower vs. no co-borrower scenarios

The most significant testing challenge will be the comprehensive validation of all decision paths, particularly at program boundaries and when multiple program eligibilities overlap.

## 4. [Initial Test Case Generation](../../04-initial-test-case-generation-prompt.md)

### Greenacre Loan Application - Test Assets

#### 1. BDD Gherkin Test Cases

##### Scenario 1: Successful loan application for Jumbo program (Happy Path)

```gherkin
Feature: Loan Application Approval

Background:
  Given the Greenacre Loan Application system is operational
  And I am logged in as a borrower

Scenario: Submit application qualifying for Jumbo loan program
  When I complete the loan application with the following details:
    | Field          | Value       |
    | Borrower FICO  | 720         |
    | Co-Borrower    | None        |
    | Property Type  | SFR         |
    | LTV            | 75%         |
    | Loan Amount    | $500,000    |
    | Loan Type      | Fixed       |
    | Loan Period    | 30          |
  And I submit the application
  Then I should see an "Approval" status
  And the approved program should be "Jumbo"
  And an interest rate should be displayed
  And the application should be stored in the system with submitted details
```

##### Scenario 2: Boundary value testing for loan program eligibility

```gherkin
Feature: Loan Program Eligibility Boundaries

Background:
  Given the Greenacre Loan Application system is operational
  And I am logged in as a borrower

Scenario Outline: Test loan approval at program boundaries
  When I complete the loan application with the following details:
    | Field          | Value           |
    | Borrower FICO  | <borrower_fico> |
    | Co-Borrower    | <co_borrower>   |
    | Property Type  | <property>      |
    | LTV            | <ltv>           |
    | Loan Amount    | <amount>        |
    | Loan Type      | <type>          |
    | Loan Period    | <period>        |
  And I submit the application
  Then I should see a "<status>" status
  And the approved program should be "<program>"

  Examples:
    | borrower_fico | co_borrower | property | ltv  | amount    | type  | period | status   | program      |
    | 660           | None        | SFR      | 80%  | $418,000  | Fixed | 30     | Approval | Jumbo        |
    | 659           | None        | SFR      | 80%  | $418,000  | Fixed | 30     | Approval | Conventional |
    | 620           | None        | SFR      | 80%  | $417,999  | Fixed | 30     | Approval | Conventional |
    | 619           | None        | SFR      | 80%  | $400,000  | Fixed | 30     | Approval | FHA          |
    | 580           | None        | SFR      | 81%  | $200,000  | Fixed | 30     | Approval | FHA          |
    | 580           | None        | SFR      | 101% | $200,000  | Fixed | 30     | Denial   | NA           |
```

##### Scenario 3: Multiple loan program eligibility with precedence rules

```gherkin
Feature: Loan Program Precedence Rules

Background:
  Given the Greenacre Loan Application system is operational
  And I am logged in as a borrower

Scenario: Application qualifying for multiple loan programs follows precedence
  When I complete the loan application with the following details:
    | Field          | Value       |
    | Borrower FICO  | 700         |
    | Co-Borrower    | None        |
    | Property Type  | SFR         |
    | LTV            | 75%         |
    | Loan Amount    | $400,000    |
    | Loan Type      | Fixed       |
    | Loan Period    | 30          |
  And I submit the application
  Then I should see an "Approval" status
  And the approved program should be "Jumbo"
  
  When I modify the loan application to:
    | Field       | Value       |
    | Loan Amount | $417,999    |
  And I submit the application
  Then I should see an "Approval" status
  And the approved program should be "Conventional"
```

##### Scenario 4: Co-borrower impact on loan eligibility

```gherkin
Feature: Co-Borrower Effect on Loan Eligibility

Background:
  Given the Greenacre Loan Application system is operational
  And I am logged in as a borrower

Scenario: Low FICO borrower with strong co-borrower gets approval
  When I complete the loan application with the following details:
    | Field          | Value       |
    | Borrower FICO  | 600         |
    | Co-Borrower    | 720         |
    | Property Type  | SFR         |
    | LTV            | 75%         |
    | Loan Amount    | $300,000    |
    | Loan Type      | Fixed       |
    | Loan Period    | 30          |
  And I submit the application
  Then I should see an "Approval" status
  And the approved program should be "Conventional"
  
  When I modify the loan application to:
    | Field          | Value       |
    | Co-Borrower    | None        |
  And I submit the application
  Then I should see an "Approval" status
  And the approved program should be "FHA"
```

##### Scenario 5: Invalid data entry validation

```gherkin
Feature: Loan Application Validation

Background:
  Given the Greenacre Loan Application system is operational
  And I am logged in as a borrower

Scenario Outline: System validation prevents invalid applications
  When I attempt to enter "<field>" with value "<value>"
  Then I should see a validation error for that field
  And I should not be able to submit the application
  
  Examples:
    | field         | value         |
    | Borrower FICO | 250           |
    | Borrower FICO | 900           |
    | LTV           | 120%          |
    | Loan Amount   | $30,000       |
    | Loan Amount   | $1,200,000    |
    | Loan Period   | 20            |
    | Property Type | Mobile Home   |
```

#### 2. Test Data Generation Instructions

```javascript
/**
 * Greenacre Loan Application Test Data Generator
 * This script generates test data based on equivalence partitioning,
 * boundary value analysis, and pairwise testing techniques.
 */

// Define valid ranges and values for each parameter
const validRanges = {
  borrowerFICO: { min: 300, max: 850, step: 1 },
  coBorrowerFICO: { min: 300, max: 850, step: 1, allowNone: true },
  propertyType: ['SFR', 'Condo', 'Townhouse', 'Multi-Family', 'Commercial'],
  ltv: { min: 0, max: 100, step: 0.5 }, // LTV as percentage
  loanAmount: { min: 50000, max: 1000000, step: 1000 }, // USD
  loanType: ['Fixed', 'Adjustable'],
  loanPeriod: [10, 15, 30, 40]
};

// Define program boundaries for focused testing
const programBoundaries = {
  jumbo: {
    borrowerFICO: { min: 660, max: 850 },
    coBorrowerFICO: { min: 620, max: 850, allowNone: true },
    propertyType: ['SFR', 'Condo', 'Townhouse', 'Multi-Family'],
    ltv: { max: 80 },
    loanAmount: { min: 418000, max: 1000000 },
    loanType: ['Fixed', 'Adjustable'],
    loanPeriod: [15, 30, 40]
  },
  conventional: {
    borrowerFICO: { min: 620, max: 850 },
    coBorrowerFICO: { min: 520, max: 850, allowNone: true },
    propertyType: ['SFR', 'Condo', 'Townhouse', 'Multi-Family'],
    ltv: { max: 80 },
    loanAmount: { min: 50000, max: 1000000 },
    loanType: ['Fixed', 'Adjustable'],
    loanPeriod: [10, 15, 30, 40]
  },
  fha: {
    borrowerFICO: { min: 300, max: 850 },
    coBorrowerFICO: { min: 300, max: 850, allowNone: true },
    propertyType: ['SFR', 'Condo', 'Townhouse'],
    ltv: { max: 100 },
    loanAmount: { min: 50000, max: 418000 },
    loanType: ['Fixed'],
    loanPeriod: [15, 30]
  }
};

/**
 * Generate boundary test cases for a specific parameter
 * @param {string} paramName - Name of the parameter
 * @param {object} range - Valid range for the parameter
 * @returns {Array} Array of boundary values
 */
function generateBoundaryValues(paramName, range) {
  const boundaries = [];
  
  if (typeof range.min === 'number' && typeof range.max === 'number') {
    // Add at-boundary values
    boundaries.push(range.min);
    boundaries.push(range.max);
    
    // Add just-inside-boundary values
    if (range.step) {
      boundaries.push(range.min + range.step);
      boundaries.push(range.max - range.step);
    }
    
    // Add just-outside-boundary values (for validation testing)
    if (range.step) {
      boundaries.push(range.min - range.step);
      boundaries.push(range.max + range.step);
    }
  } else if (Array.isArray(range)) {
    // For enum types, use the values directly
    boundaries.push(...range);
  }
  
  return boundaries;
}

/**
 * Generate representative values using equivalence partitioning
 * @param {string} paramName - Name of the parameter
 * @param {object} range - Valid range for the parameter
 * @returns {Array} Array of representative values
 */
function generateEquivalencePartitions(paramName, range) {
  const partitions = [];
  
  if (typeof range.min === 'number' && typeof range.max === 'number') {
    // Add low, middle, and high values within each range
    const low = range.min + range.step;
    const middle = Math.floor((range.min + range.max) / 2);
    const high = range.max - range.step;
    
    partitions.push(low, middle, high);
  } else if (Array.isArray(range)) {
    // For enum types, use the values directly
    partitions.push(...range);
  }
  
  return partitions;
}

/**
 * Generate program boundary test cases
 * These test cases target the boundaries between loan programs
 */
function generateProgramBoundaryTests() {
  const testCases = [];
  
  // Jumbo vs Conventional boundary tests (FICO score boundaries)
  testCases.push({
    borrowerFICO: 660, // Exact boundary for Jumbo
    coBorrowerFICO: null,
    propertyType: 'SFR',
    ltv: 75,
    loanAmount: 500000,
    loanType: 'Fixed',
    loanPeriod: 30,
    expectedProgram: 'Jumbo'
  });
  
  testCases.push({
    borrowerFICO: 659, // Just below Jumbo boundary
    coBorrowerFICO: null,
    propertyType: 'SFR',
    ltv: 75,
    loanAmount: 500000,
    loanType: 'Fixed',
    loanPeriod: 30,
    expectedProgram: 'Conventional'
  });
  
  // Conventional vs FHA boundary tests
  testCases.push({
    borrowerFICO: 620, // Exact boundary for Conventional
    coBorrowerFICO: null,
    propertyType: 'SFR',
    ltv: 75,
    loanAmount: 300000,
    loanType: 'Fixed',
    loanPeriod: 30,
    expectedProgram: 'Conventional'
  });
  
  testCases.push({
    borrowerFICO: 619, // Just below Conventional boundary
    coBorrowerFICO: null,
    propertyType: 'SFR',
    ltv: 75,
    loanAmount: 300000,
    loanType: 'Fixed',
    loanPeriod: 30,
    expectedProgram: 'FHA'
  });
  
  // Loan amount boundary tests
  testCases.push({
    borrowerFICO: 700,
    coBorrowerFICO: null,
    propertyType: 'SFR',
    ltv: 75,
    loanAmount: 418000, // Exact boundary for Jumbo
    loanType: 'Fixed',
    loanPeriod: 30,
    expectedProgram: 'Jumbo'
  });
  
  testCases.push({
    borrowerFICO: 700,
    coBorrowerFICO: null,
    propertyType: 'SFR',
    ltv: 75,
    loanAmount: 417999, // Just below Jumbo boundary
    loanType: 'Fixed',
    loanPeriod: 30,
    expectedProgram: 'Conventional'
  });
  
  // LTV boundary tests
  testCases.push({
    borrowerFICO: 700,
    coBorrowerFICO: null,
    propertyType: 'SFR',
    ltv: 80, // Exact boundary for Conventional
    loanAmount: 300000,
    loanType: 'Fixed',
    loanPeriod: 30,
    expectedProgram: 'Conventional'
  });
  
  testCases.push({
    borrowerFICO: 700,
    coBorrowerFICO: null,
    propertyType: 'SFR',
    ltv: 80.5, // Just above Conventional boundary
    loanAmount: 300000,
    loanType: 'Fixed',
    loanPeriod: 30,
    expectedProgram: 'FHA'
  });
  
  return testCases;
}

/**
 * Generate pairwise test combinations
 * Focus on critical parameter interactions
 */
function generatePairwiseTests() {
  const testCases = [];
  
  // Focus on co-borrower vs. no co-borrower scenarios
  // With various FICO score combinations
  const ficoValues = [350, 580, 620, 660, 700, 780];
  const coBorrowerOptions = [null, 350, 580, 620, 660, 700, 780];
  
  ficoValues.forEach(fico => {
    coBorrowerOptions.forEach(coFico => {
      // Only generate a manageable subset of combinations
      if ((fico + (coFico || 0)) % 200 === 0) {
        testCases.push({
          borrowerFICO: fico,
          coBorrowerFICO: coFico,
          propertyType: 'SFR',
          ltv: 75,
          loanAmount: 300000,
          loanType: 'Fixed',
          loanPeriod: 30
        });
      }
    });
  });
  
  // Focus on property type vs. loan amount interactions
  const propertyTypes = ['SFR', 'Condo', 'Townhouse', 'Multi-Family', 'Commercial'];
  const loanAmounts = [75000, 300000, 418000, 600000, 900000];
  
  propertyTypes.forEach(propType => {
    loanAmounts.forEach(amount => {
      // Only generate a manageable subset of combinations
      if ((propType.length + amount) % 300000 === 0) {
        testCases.push({
          borrowerFICO: 700,
          coBorrowerFICO: null,
          propertyType: propType,
          ltv: 75,
          loanAmount: amount,
          loanType: 'Fixed',
          loanPeriod: 30
        });
      }
    });
  });
  
  return testCases;
}

/**
 * Generate the complete test data set
 */
function generateTestData() {
  const allTestCases = [];
  
  // Add boundary test cases
  allTestCases.push(...generateProgramBoundaryTests());
  
  // Add pairwise test cases
  allTestCases.push(...generatePairwiseTests());
  
  // Add specific edge cases
  allTestCases.push({
    borrowerFICO: 300, // Minimum FICO
    coBorrowerFICO: 850, // Maximum FICO
    propertyType: 'SFR',
    ltv: 100, // Maximum LTV
    loanAmount: 50000, // Minimum amount
    loanType: 'Fixed',
    loanPeriod: 15,
    description: 'Minimum borrower FICO with maximum co-borrower FICO'
  });
  
  allTestCases.push({
    borrowerFICO: 850, // Maximum FICO
    coBorrowerFICO: null,
    propertyType: 'Commercial',
    ltv: 65,
    loanAmount: 1000000, // Maximum amount
    loanType: 'Adjustable',
    loanPeriod: 40,
    description: 'Maximum values for all applicable fields'
  });
  
  // Return the test set with expected results added
  return allTestCases.map(testCase => {
    if (!testCase.expectedProgram) {
      // Calculate expected result if not already provided
      testCase.expectedResults = determineExpectedResults(testCase);
    }
    return testCase;
  });
}

/**
 * Execute the test data generation
 */
function main() {
  const testData = generateTestData();
  console.log(`Generated ${testData.length} test cases`);
  console.log(JSON.stringify(testData, null, 2));
  return testData;
}

// Execute the generator
const testDataSet = main();

```

#### 3. Oracle for Expected Results

```javascript
/**
 * Loan Approval Oracle
 * Determines expected results for loan applications based on acceptance criteria
 */

/**
 * Evaluates a loan application and determines approval status and program
 * @param {Object} application - The loan application data
 * @returns {Object} Expected results including approval status, program, and rate info
 */
function determineExpectedResults(application) {
  // Extract application parameters
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Validate inputs are within acceptable ranges
  if (!validateInputs(application)) {
    return { status: "Invalid Input", program: "NA", rate: "NA" };
  }
  
  // Check eligibility for each program
  const eligiblePrograms = [];
  
  // Check Jumbo eligibility
  if (isEligibleForJumbo(application)) {
    eligiblePrograms.push("Jumbo");
  }
  
  // Check Conventional eligibility
  if (isEligibleForConventional(application)) {
    eligiblePrograms.push("Conventional");
  }
  
  // Check FHA eligibility
  if (isEligibleForFHA(application)) {
    eligiblePrograms.push("FHA");
  }
  
  // Determine result based on program precedence
  if (eligiblePrograms.length > 0) {
    const program = determineProgram(eligiblePrograms);
    const rate = calculateInterestRate(program, application);
    return { 
      status: "Approval", 
      program: program, 
      rate: rate,
      eligiblePrograms: eligiblePrograms // Include all eligible programs for debugging
    };
  } else {
    return { status: "Denial", program: "NA", rate: "NA" };
  }
}

/**
 * Validates that all inputs are within acceptable ranges
 */
function validateInputs(application) {
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Check borrower FICO
  if (borrowerFICO < 300 || borrowerFICO > 850) {
    return false;
  }
  
  // Check co-borrower FICO if present
  if (coBorrowerFICO !== null && (coBorrowerFICO < 300 || coBorrowerFICO > 850)) {
    return false;
  }
  
  // Check property type
  const validPropertyTypes = ['SFR', 'Condo', 'Townhouse', 'Multi-Family', 'Commercial'];
  if (!validPropertyTypes.includes(propertyType)) {
    return false;
  }
  
  // Check LTV
  if (ltv < 0 || ltv > 100) {
    return false;
  }
  
  // Check loan amount
  if (loanAmount < 50000 || loanAmount > 1000000) {
    return false;
  }
  
  // Check loan type
  const validLoanTypes = ['Fixed', 'Adjustable'];
  if (!validLoanTypes.includes(loanType)) {
    return false;
  }
  
  // Check loan period
  const validLoanPeriods = [10, 15, 30, 40];
  if (!validLoanPeriods.includes(loanPeriod)) {
    return false;
  }
  
  return true;
}

/**
 * Determines if application is eligible for Jumbo loan program
 */
function isEligibleForJumbo(application) {
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Borrower FICO: 660-850
  if (borrowerFICO < 660 || borrowerFICO > 850) {
    return false;
  }
  
  // Co-Borrower FICO: None, or 620-850
  if (coBorrowerFICO !== null && (coBorrowerFICO < 620 || coBorrowerFICO > 850)) {
    return false;
  }
  
  // Property Type: SFR, Condo, Townhouse, Multi-Family
  const validPropertyTypes = ['SFR', 'Condo', 'Townhouse', 'Multi-Family'];
  if (!validPropertyTypes.includes(propertyType)) {
    return false;
  }
  
  // Loan-to-Value (LTV): <= 80%
  if (ltv > 80) {
    return false;
  }
  
  // Loan Amount (USD): 418,000 - 1,000,000
  if (loanAmount < 418000 || loanAmount > 1000000) {
    return false;
  }
  
  // Loan Type: Fixed, Adjustable
  const validLoanTypes = ['Fixed', 'Adjustable'];
  if (!validLoanTypes.includes(loanType)) {
    return false;
  }
  
  // Loan Period: 15, 30, 40 years
  const validLoanPeriods = [15, 30, 40];
  if (!validLoanPeriods.includes(loanPeriod)) {
    return false;
  }
  
  return true;
}

/**
 * Determines if application is eligible for Conventional loan program
 */
function isEligibleForConventional(application) {
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Borrower FICO: 620-850
  if (borrowerFICO < 620 || borrowerFICO > 850) {
    return false;
  }
  
  // Co-Borrower FICO: None, or 520-850
  if (coBorrowerFICO !== null && (coBorrowerFICO < 520 || coBorrowerFICO > 850)) {
    return false;
  }
  
  // Property Type: SFR, Condo, Townhouse, Multi-Family
  const validPropertyTypes = ['SFR', 'Condo', 'Townhouse', 'Multi-Family'];
  if (!validPropertyTypes.includes(propertyType)) {
    return false;
  }
  
  // Loan-to-Value (LTV): <= 80%
  if (ltv > 80) {
    return false;
  }
  
  // Loan Amount (USD): 50,000 - 1,000,000
  if (loanAmount < 50000 || loanAmount > 1000000) {
    return false;
  }
  
  // Loan Type: Fixed, Adjustable
  const validLoanTypes = ['Fixed', 'Adjustable'];
  if (!validLoanTypes.includes(loanType)) {
    return false;
  }
  
  // Loan Period: 10, 15, 30, 40 years
  const validLoanPeriods = [10, 15, 30, 40];
  if (!validLoanPeriods.includes(loanPeriod)) {
    return false;
  }
  
  return true;
}

/**
 * Determines if application is eligible for FHA loan program
 */
function isEligibleForFHA(application) {
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Borrower FICO: 300-850
  if (borrowerFICO < 300 || borrowerFICO > 850) {
    return false;
  }
  
  // Co-Borrower FICO: None, or 300-850
  if (coBorrowerFICO !== null && (coBorrowerFICO < 300 || coBorrowerFICO > 850)) {
    return false;
  }
  
  // Property Type: SFR, Condo, Townhouse
  const validPropertyTypes = ['SFR', 'Condo', 'Townhouse'];
  if (!validPropertyTypes.includes(propertyType)) {
    return false;
  }
  
  // Loan-to-Value (LTV): <= 100%
  if (ltv > 100) {
    return false;
  }
  
  // Loan Amount (USD): 50,000 - 418,000
  if (loanAmount < 50000 || loanAmount > 418000) {
    return false;
  }
  
  // Loan Type: Fixed
  if (loanType !== 'Fixed') {
    return false;
  }
  
  // Loan Period: 15, 30 years
  const validLoanPeriods = [15, 30];
  if (!validLoanPeriods.includes(loanPeriod)) {
    return false;
  }
  
  return true;
}

/**
 * Determines final program based on precedence rules
 * Precedence order: Jumbo > Conventional > FHA
 */
function determineProgram(eligiblePrograms) {
  if (eligiblePrograms.includes("Jumbo")) {
    return "Jumbo";
  } else if (eligiblePrograms.includes("Conventional")) {
    return "Conventional";
  } else if (eligiblePrograms.includes("FHA")) {
    return "FHA";
  }
  return "NA";
}

/**
 * Calculate interest rate based on program and application details
 * Note: This is a simplified implementation for test purposes
 */
function calculateInterestRate(program, application) {
  const { borrowerFICO, ltv, loanPeriod, loanType } = application;
  
  // Base rates for each program
  const baseRates = {
    Jumbo: 5.25,
    Conventional: 4.75,
    FHA: 4.25
  };
  
  // No calculation for denied applications
  if (program === "NA") {
    return "NA";
  }
  
  let rate = baseRates[program];
  
  // Adjust based on FICO score
  if (borrowerFICO >= 760) {
    rate -= 0.5;
  } else if (borrowerFICO >= 700) {
    rate -= 0.25;
  } else if (borrowerFICO < 620) {
    rate += 0.5;
  }
  
  // Adjust based on LTV
  if (ltv > 90) {
    rate += 0.5;
  } else if (ltv > 80) {
    rate += 0.25;
  }
  
  // Adjust based on loan period
  if (loanPeriod === 15) {
    rate -= 0.25;
  } else if (loanPeriod === 40) {
    rate += 0.25;
  }
  
  // Adjust for loan type
  if (loanType === 'Adjustable') {
    rate -= 0.5;  // Initial rate for ARM is lower
  }
  
  return rate.toFixed(2) + '%';
}

// Example usage
const sampleApplication = {
  borrowerFICO: 720,
  coBorrowerFICO: null,
  propertyType: 'SFR',
  ltv: 75,
  loanAmount: 500000,
  loanType: 'Fixed',
  loanPeriod: 30
};

const result = determineExpectedResults(sampleApplication);
console.log("Application:", sampleApplication);
console.log("Expected Results:", result);

```

#### 4. Exploratory Testing Charters

##### Charter 1: Investigate Edge Case Co-Borrower Scenarios

**Objective:** Explore how the system handles applications with various co-borrower configurations, particularly near program eligibility boundaries.

**Areas of Focus:**

- Applications where borrower FICO is below program minimums but co-borrower FICO is strong
- Applications where borrower meets minimums but co-borrower does not
- Edge cases where either borrower or co-borrower FICO is exactly at program boundaries
- Applications where the co-borrower information is changed/removed after initial submission

**Testing Approach:**

1. Start with a baseline application that qualifies for a specific program
2. Systematically modify borrower and co-borrower FICO scores while keeping other parameters constant
3. Test various combinations across program boundaries
4. Observe system behavior, particularly for applications that should change program eligibility based solely on co-borrower information

**Time Box:** 90 minutes

### Charter 2: Investigate Concurrent Application Processing and State Management

**Objective:** Explore how the system handles multiple users working on the same loan application simultaneously, and identify potential data consistency issues.

**Areas of Focus

## 5. [Coverage Review and Augmentation](../../05-coverage-review-and-augmentation-prompt.md)

## 6. [Final Consolation and Self-Review](../../06-final-consolidation-and-self-review-prompt.md)
