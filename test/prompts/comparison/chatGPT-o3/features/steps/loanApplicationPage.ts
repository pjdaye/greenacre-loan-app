import { Page, Locator, expect } from '@playwright/test';
import { DataTable } from 'playwright-bdd';
import { Fixture, Given, When } from 'playwright-bdd/decorators';
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

    @Given('a borrower is on the loan application page')
    async goto() {
        await this.page.goto('/');
        await expect(this.page).toHaveTitle(this.pageTitle);
    }

    @When('the Loan-to-Value is {string}% on a loan amount of {string}')
    async enterPurchaseInformation(ltv: string, loanAmount: string) {
        const purchasePrice = String((Math.round((Number(loanAmount) / (Number(ltv) / 100)) * 100) / 100).toFixed(2));
        const downPayment = String(Number(purchasePrice) - Number(loanAmount));
        
        await this.purchaseInfoPage.purchasePrice.click();
        await this.purchaseInfoPage.purchasePrice.fill(purchasePrice);

        await this.purchaseInfoPage.zipCode.click();
        await this.purchaseInfoPage.zipCode.fill('12345');

        await this.purchaseInfoPage.downPayment.click();
        await this.purchaseInfoPage.downPayment.fill(downPayment);
    }
    
    @When('the borrower submits the loan application form')
    async submitForApproval() {
        await this.submitButton.click();
    }
}
