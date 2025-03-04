import { Page, Locator, expect } from '@playwright/test';
import { DataTable } from 'playwright-bdd';
import { Fixture, Given, When, Then } from 'playwright-bdd/decorators';
import { BorrowerInfoPage } from './borrowerInfoPage';
import { PurchaseInfoPage } from './purchaseInfoPage';
import { LoanInfoPage } from './loanInfoPage';
import { LoanApprovalPage } from './loanApprovalPage';

export @Fixture('loanApplicationPage') class LoanApplicationPage {
    readonly page: Page;
    readonly submitButton: Locator;
    readonly camcelButton: Locator;
    readonly pageTitle: string;
    readonly borrowerInfoPage: BorrowerInfoPage;
    readonly purchaseInfoPage: PurchaseInfoPage;
    readonly loanInfoPage: LoanInfoPage;
    readonly loanApprovalPage: LoanApprovalPage;

    constructor(page: Page) {
        this.page = page;
        this.submitButton = page.getByRole('button', { name: 'Submit Loan' });
        this.camcelButton = page.getByRole('button', { name: 'Cancel' });
        this.pageTitle = 'Greenacre Loans';
        this.borrowerInfoPage = new BorrowerInfoPage(page);
        this.purchaseInfoPage = new PurchaseInfoPage(page);
        this.loanInfoPage = new LoanInfoPage(page);
        this.loanApprovalPage = new LoanApprovalPage(page);
    }

    @Given('the LTV is {string}% on a loan of ${string}')
    async enterPurchasePriceAndDownPayment(ltv: string, loanAmount: string) {
        const purchasePrice = String((Math.round((Number(loanAmount) / (Number(ltv) / 100)) * 100) / 100).toFixed(2));
        const downPayment = String(Math.round((Number(purchasePrice) - Number(loanAmount))).toFixed(2));
        await this.purchaseInfoPage.purchasePrice.click();
        await this.purchaseInfoPage.purchasePrice.fill(purchasePrice);
        await this.purchaseInfoPage.downPayment.click();
        await this.purchaseInfoPage.downPayment.fill(downPayment);
    }

    @When('the borrower submits the loan application')
    async submitForApproval() {
        await this.submitButton.click();
    }

    @Then('an alert is displayed with message {string}')
    async verifyAlertMessage(alertMessage: string) {
        await expect(this.page).toHaveScreenshot(alertMessage);
    }
}
