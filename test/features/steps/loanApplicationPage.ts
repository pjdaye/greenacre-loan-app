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

    async goto() {
        await this.page.goto('/');
        await expect(this.page).toHaveTitle(this.pageTitle);
    }

    async fillLoanApplication(data: DataTable) {
        const values = data.rowsHash();
        const purchasePrice = String((Math.round((Number(values['loanAmount']) / (Number(values['ltv']) / 100)) * 100) / 100).toFixed(2));
        const downPayment = String(Number(purchasePrice) - Number(values['loanAmount']));
        const loanTerm = values['loanPeriod'] + ' years';
        await this.borrowerInfoPage.inputBorrowerInformation(values['borrowerFirstName'], values['borrowerLastName'], values['borrowerFICO']);
        await this.borrowerInfoPage.inputCoborrowerInformation(values['coBorrowerFirstName'], values['coBorrowerLastName'], values['coBorrowerFICO']);
        await this.purchaseInfoPage.inputPurchaseInformation(values['propertyType'], values['zipCode'], purchasePrice, downPayment);
        await this.loanInfoPage.inputLoanInformation(values['loanType'], values['loanAmount'], loanTerm);
        await this.submitForApproval();
    }

    async submitForApproval() {
        await this.submitButton.click();
    }

    async verifyAlertMessage(alertMessage: string) {
        await expect(this.page).toHaveScreenshot(alertMessage);
    }
}
