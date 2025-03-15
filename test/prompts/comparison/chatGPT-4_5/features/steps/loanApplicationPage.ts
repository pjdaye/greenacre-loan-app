import { Page, Locator, expect } from '@playwright/test';
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

    @Given('loan application processing system is running')
    async goto() {
        await this.page.goto('/');
        await expect(this.page).toHaveTitle(this.pageTitle);
    }

    @When('borrower FICO is {string}, Co-borrower FICO is {string}, property type is {string}, LTV is {string}%, loan amount is USD {string}, loan type {string}, loan period is {string} years')
    async fillLoanApplication(borrowerFICO: string, coBorrowerFICO: string, propertyType: string, ltv: string, loanAmount: string, loanType: string, loanPeriod: string) {
        const purchasePrice = String((Math.round((Number(loanAmount) / (Number(ltv) / 100)) * 100) / 100).toFixed(0));
        const downPayment = String(Number(purchasePrice) - Number(loanAmount));
        const loanTerm = loanPeriod + ' years';
        await this.borrowerInfoPage.inputBorrowerInformation('BFirstName', 'BLastName', borrowerFICO);
        await this.borrowerInfoPage.inputCoborrowerInformation('CFirstName', 'CLastName', coBorrowerFICO);
        await this.purchaseInfoPage.inputPurchaseInformation(propertyType, '12345', purchasePrice, downPayment);
        await this.loanInfoPage.inputLoanInformation(loanType, loanAmount, loanTerm);
        await this.submitForApproval();
    }

    @When('borrower submits the loan application')
    async submitForApproval() {
        await this.submitButton.click();
    }
}
