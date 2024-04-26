import { createBdd } from "playwright-bdd";
import { LoanApplicationPage } from "./loanApplicationPage.ts";

const { Given, When, Then } = createBdd();

Given('the Greenacre home page is displayed', async ({ page }) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.goto();
});

When('a borrower enters borrower information of {string}, {string}, and {string}', async ({ page }, firstName: string, lastName: string, fico: string) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.inputBorrowerInformation(firstName, lastName, fico);
});

When('a borrower enters coborrower information of {string}, {string}, and {string}', async ({ page }, firstName: string, lastName: string, fico: string) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.inputCoborrowerInformation(firstName, lastName, fico);
});

When('a borrower enters purchase information of {string}, {string}, {string}, and {string}', async ({ page }, propertyType: string, zipCode: string, price: string, downPmt: string) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.inputPurchaseInformation(propertyType, zipCode, price, downPmt);
});

When('a borrower enters loan information of {string}, {string}, and {string}', async ({ page }, loanAmt: string, loanType: string, period: string) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.inputLoanInformation(loanType, loanAmt, period);
});

When('a borrower submits the application for approval', async ({ page }) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.submitForApproval();
});

Then('the loan is approved', async ({ page }) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyApproval();
});

Then('the loan is denied', async ({ page }) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyDenial();
});

Then('the loan program is {string}', async ({ page }, program: string) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyLoanProgram(program);
});

Then('the interest rate is {string}', async ({ page }, rate: string) => {
    const loanApplicationPage = new LoanApplicationPage(page);
    await loanApplicationPage.verifyInterestRate(rate);
});
