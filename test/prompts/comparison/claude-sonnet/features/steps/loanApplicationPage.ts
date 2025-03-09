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

    @Given('the Greenacre Loan Application system is operational')
    async goto() {
        await this.page.goto('/');
        await expect(this.page).toHaveTitle(this.pageTitle);
    }

    @When('I complete the loan application with the following details:')
    async fillLoanApplication(data: DataTable) {
        const values = data.rowsHash();
        const purchasePrice = String((Math.round((Number(values['Loan Amount']) / (Number(values['LTV']) / 100)) * 100) / 100).toFixed(2));
        const downPayment = String(Number(purchasePrice) - Number(values['loanAmount']));
        const loanTerm = values['Loan Period'] + ' years';
        await this.borrowerInfoPage.inputBorrowerInformation('BFirstName', 'BLastName', values['Borrower FICO']);
        await this.borrowerInfoPage.inputCoborrowerInformation('CFirstName', 'CLastName', values['Co-Borrower']);
        await this.purchaseInfoPage.inputPurchaseInformation(values['Property Type'], '12345', purchasePrice, downPayment);
        await this.loanInfoPage.inputLoanInformation(values['Loan Type'], values['Loan Amount'], loanTerm);
        await this.submitForApproval();
    }
    
    @When('I modify the loan application to:')
    async modifyLoanApplication(data: DataTable) {
        const values = data.rowsHash();
        switch (values['Field']) {
            case 'Loan Amount': {
                await this.loanInfoPage.loanAmount.click();
                await this.loanInfoPage.loanAmount.fill(values['Value']);
                break;
            }
            case 'Co-Borrower': {
                await this.borrowerInfoPage.coborrowerFico.click();
                await this.borrowerInfoPage.coborrowerFico.fill(values['Value']);
                break;
            }
        }
    }

    @When('I submit the application')
    async submitForApproval() {
        await this.submitButton.click();
    }

    async verifyAlertMessage(alertMessage: string) {
        await expect(this.page).toHaveScreenshot(alertMessage);
    }
}
