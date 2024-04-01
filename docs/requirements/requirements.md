# Greenacre Loan Application App Requirements #

## Purpose ##

The Greenacre Loan Application is for users trying to get a quick pre-approval on a loan. It collects basic information on the borrower, co-borrower, property, the purchase, and the requested loan, and then processes that information against a set of rules to determine if the loan is pre-approved for one of Greenacre's loan programs, and if so which one and the interest rate offered.

## Applicant Information ##

### Borrower Information ###

* **First Name**: 1-50 alphanumeric characters
* **Last Name**: 1-50 alphanumeric characters
* **[FICO Score](https://en.wikipedia.org/wiki/FICO)**: 300-850

### Co-Borrower Information ###

* **First Name**: 1-50 alphanumeric characters
* **Last Name**: 1-50 alphanumeric characters
* **[FICO Score](https://en.wikipedia.org/wiki/FICO)**: 300-850

## Purchase Information ##

### Property Information ###

* **Property Type**: One of the following:
  * Residential:
    * Single Family Residence (SFR)
    * Condominium (Condo)
    * Townhouse
    * Multi-Family Residence (Multi-Family)
  * Commercial
* **Zip Code**: Standard US 5 or 5+4 format

### Purchase Price and Downpayment ###

* **Purchase Price**: US$ with no limits, however minimum mortgage to be processed through the app is $50,000.
* **Down Payment**: $0 - Purchase Price

## Loan Information ##

* **Loan Type**: Fixed, Adjustable
* **Loan Period** (in years): 10, 15, 30, 40
* **Loan Amount**: $50,000 - $1,000,000

## Buttons ##

The UI will contain the following buttons:

* **Submit Loan**:
  * Always activated
  * Sends loan application information for processing
* **Cancel**:
  * Always activated
  * Cancels data entry and clears all fields
* **Save Info**:
  * Activated when Submit Loan is clicked
  * Saves all loan application data, including approval results
* **Loan Info**:
  * Activated when screen first loads, or after Cancel is clicked
  * Loads all loan application data, including approval results from a previously saved session
* **Print**:
  * Activated when Submit Loan is clicked
  * Prints a report of loan application data, along with approval results
* **Help?**:
  * Always activated
  * Launches modal dialog with help information

## Loan Application Results ##

The UI will present the following pieces of data after loan application data is submitted for approval:

* **Loan Approval**:
  * Text: "Your Loan Is:" followed by "APPROVED!" or "Not Approved"
* **Interest Rate**:
  * Displayed only if loan is approved
  * Text: "Your Interest Rate Is:" followed by the return mortgage interest rate
* **Loan Program**:
  * Displayed only if loan is approved
  * Text: "Your Loan Program Is:" followed by the approved loan program (Conventional, FHA, or Jumbo)

## Loan Approval Processing ##

Loans will be evaluated for approval according to the following rules:

| Loan Information | Conventional | FHA | Jumbo |
| :--- | :--- | :--- | :--- |
| Borrower FICO | 620+ | 300+ | 660+ |
| Co-Borrower FICO | None, or 520+ | None, or 300+ | None, or 620+ |
| Property Type | Any Residential | SFR, Condo, Townhouse | Any Residential |
| LTV (Loan-to-Value) | <=80% | <=100% | <=80% |
| Loan Amount | $50,000 - $1,000,000 | $50,000 - $418,000 | $418,000 - $1,000,000 |
| Loan Type | Fixed, Adjustable | Fixed | Fixed, Adjustable |
| Loan Period (years) | 10, 15, 30, 40 | 15, 30 | 15, 30, 40 |

If a loan meets the criteria for more than one loan program, the loan will be approved in the following precedence order:

1. Jumbo
2. Conventional
3. FHA
