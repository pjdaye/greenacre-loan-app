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
    const purchasePrice = String(Math.round(Number(values['loanAmount']) / (Number(values['ltv']) / 100)));
    const downPayment = String(Number(purchasePrice) - Number(values['loanAmount']));
    const loanTerm = values['loanPeriod'] + ' years';
    await loanApplicationPage.inputBorrowerInformation(values['borrowerFirstName'], values['borrowerLastName'], values['borrowerFICO']);
    await loanApplicationPage.inputCoborrowerInformation(values['coBorrowerFirstName'], values['coBorrowerLastName'], values['coBorrowerFICO']);
    await loanApplicationPage.inputPurchaseInformation(values['propertyType'], values['zipCode'], purchasePrice, downPayment);
    await loanApplicationPage.inputLoanInformation(values['loanType'], values['loanAmount'], loanTerm);
    await loanApplicationPage.submitForApproval();
});

Then('the loan application should be approved', async ({ page }) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyApproval();
});

Then('the loan program should be {string}', async ({ page }, program: string) => {
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
