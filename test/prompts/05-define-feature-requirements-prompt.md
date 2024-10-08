# **Title:** Set the Business Context

## **Overview:**

Provide the Generative AI with information about the business context of the application, its users, the feature to be tested, and the requirement(s) of the new feature.

* **Task:** Review Feature Requirements
* **Goals:**
  * Input Epic
  * Input User Stories
  * Update Error Hypotheses

---

## **Prompt Structure:**

"Review the feature requirements for the Loan Application feature delimited by triple quotes and begin to assess the appropriate error hypotheses:

"""
**Epic**:

* `{{epic}}`

**User Stories**:

* `{{user_stories}}`
"""


**Example:**
"Review the feature requirements for the Loan Application feature delimited by triple quotes and begin to assess the appropriate error hypotheses:


"""

## Epic

* As a loan applicant, I want to submit the necessary data so that I can get a loan approval.

## User Stories

### Submit for Approval (Back-end)

* As a borrower, I want to submit my data so that I can get a loan approval.

#### Acceptance Criteria

* The following data points are used to determine approval, program, and interest rate:
  * Borrower FICO (valid values: 300-850)
  * Co-Borrower FICO (valid values: 300-850, or none)
  * Property Type (SFR, Condo, Townhouse, Multi-Family, Commercial)
  * Loan-to-Value (LTV), expressed as a percentage calculated from the Loan Amount divided by the Purchase Price (valid values: 0%-100%)
  * Loan Amount (valid values: USD 50,000 - 1,000,000)
  * Loan Type (Fixed, Adjustable)
  * Loan Period (10, 15, 30, 40)
* Backend API will return three values:
  * Approval
  * Program
  * Rate
* Applications will be evaluated against rulesets for each Loan Program:
  * Conventional
  * FHA
  * Jumbo
* If the loan is passes the ruleset for more than one program, it will be approved based on the following order of precedence:
  1. Jumbo
  2. Conventional
  3. FHA

#### Loan Program Rulesets

* Conventional Loan:
  * Borrower FICO: 620-850
  * Co-Borrower FICO: None, or 520-850
  * Property Type: SFR, Condo, Townhouse, Multi-Family
  * Loan-to-Value (LTV): <= 80%
  * Loan Amount (USD): 50,000 - 1,000,000
  * Loan Type: Fixed, Adjustable
  * Loan Period: 10, 15, 30, 40 years
* FHA Loan:
  * Borrower FICO: 300-850
  * Co-Borrower FICO: None, or 300-850
  * Property Type: SFR, Condo, Townhouse
  * Loan-to-Value (LTV): <= 100%
  * Loan Amount (USD): 50,000 - 418,000
  * Loan Type: Fixed
  * Loan Period: 15, 30 years
* Jumbo Loan:
  * Borrower FICO: 660-850
  * Co-Borrower FICO: None, or 620-850
  * Property Type: SFR, Condo, Townhouse, Multi-Family
  * Loan-to-Value (LTV): <= 80%
  * Loan Amount (USD): 418,000 - 1,000,000
  * Loan Type: Fixed, Adjustable
  * Loan Period: 15, 30, 40 years

### Display Approval (Front-end)

As a borrower, I want to see the results of my loan application so that I can make decisions on purchasing a property.

#### Acceptance Criteria

* Return values are parsed
* Return values are displayed in a newly rendered component on the page
* The display consists of three sections:
  * Loan Approval
    * Left-column text: "Your Loan Is:"
    * On approval, the right-column will display "APPROVED!"
    * Approval text is displayed in green
    * On denial, the right-column will display "Not Approved"
    * Denial text is displayed in red
  * Interest Rate
    * Displayed only if the loan is approved
    * Left-column text: "Your Interest Rate Is:"
    * Right-column text is the interest rate that is returned
    * Right-column text is displayed in green
  * Loan Program
    * Displayed only if the loan is approved
    * Left-column text: "Your Loan Program Is:"
    * Right-column text displays the returned loan program, which will be from the following list:
      * Conventional
      * FHA
      * Jumbo
    * Right-column text is displayed in green

"""

---

## **Parameters:**

| **Parameter Name** | **Description**                                | **Type** | **Example Values**                 |
|--------------------|------------------------------------------------|----------|------------------------------------|
| `{{epic}}`         | Describe the feature under test                | Text     | "As a ... I want ... so that ... " |
| `{{user_stories}}` | Describe the user stories that define the epic | Text     | "As a ... I want ... so that ... " |

---

## **Instructions for Use:**

1. **Identify Parameters:** Locate the placeholders in the prompt marked with `{{brackets}}`. These are the parameters that you need to customize.
2. **Customize Values:** Replace the placeholder parameters with the appropriate values for your use case. Refer to the "Parameters" section for more details.
3. **Run the Prompt:** Once customized, input the prompt into the Generative AI tool to get the desired outcome.

---

## **Additional Notes:**

* If the model accepts file attachments, attach a visual of the GUI.
