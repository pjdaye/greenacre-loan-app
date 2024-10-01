import { createBdd, DataTable } from "playwright-bdd";
import { LoanApplicationPage } from "../models/loanApplicationPage.ts";

const { Given, When, Then } = createBdd();

Given('I am on the loan application page', async ({ page }) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.goto();
});

When('I submit a loan application with the following details:', async ({ page }, data: DataTable) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    const values = data.rowsHash();
    const purchasePrice = String(Math.round(Number(values['Loan Amount']) / (Number(values['LTV']) / 100)));
    const downPayment = String(Number(purchasePrice) - Number(values['Loan Amount']));
    const loanTerm = values['Loan Period'] + ' years';
    await loanApplicationPage.inputBorrowerInformation(values['Borrower First Name'], values['Borrower Last Name'], values['Borrower FICO']);
    await loanApplicationPage.inputCoborrowerInformation(values['Co-Borrower First Name'], values['Co-Borrower Last Name'], values['Co-Borrower FICO']);
    await loanApplicationPage.inputPurchaseInformation(values['Property Type'], values['Zip Code'], purchasePrice, downPayment);
    await loanApplicationPage.inputLoanInformation(values['Loan Type'], values['Loan Amount'], loanTerm);
    await loanApplicationPage.submitForApproval();
});

Then('the loan application should be approved', async ({ page }) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyApproval();
});

Then('the loan program should be {string}', async ({ page }, program : string) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyLoanProgram(program);
});

Then('the interest rate should be a valid percentage', async ({ page }) => {
    // const loanApplicationPage = new LoanApplicationPage(page);
});

Then('the loan application should be denied', async ({ page }) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyDenial();
});

Then('the interest rate should be {string}', async ({ page }, rate: string) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyInterestRate(rate);
});
