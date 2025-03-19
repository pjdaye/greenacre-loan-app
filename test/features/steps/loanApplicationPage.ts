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

    @Given('a borrower with the following attributes:')
    async fillLoanApplication(data: DataTable) {
        const values = data.rowsHash();
        const purchasePrice = String((Math.round((Number(values['Loan Amount']) / (Number(values['LTV']) / 100)) * 100) / 100).toFixed(2));
        const downPayment = String(Number(purchasePrice) - Number(values['Loan Amount']));
        const loanTerm = values['Loan Period'] + ' years';
        
        await this.goto();

        await this.borrowerInfoPage.inputBorrowerInformation('BFirstName', 'BLastName', values['Borrower FICO']);
        await this.borrowerInfoPage.inputCoborrowerInformation('CFirstName', 'CLastName', values['Co-Borrower FICO']);
        await this.purchaseInfoPage.inputPurchaseInformation(values['Property Type'], '33123', purchasePrice, downPayment);
        await this.loanInfoPage.inputLoanInformation(values['Loan Type'], values['Loan Amount'], loanTerm);
        await this.submitForApproval();
    }

    @When('the loan application is submitted')
    async submitForApproval() {
        await this.submitButton.click();
    }

    @Then('an alert is displayed with message {string}')
    async verifyAlertMessage(alertMessage: string) {
        await expect(this.page).toHaveScreenshot(alertMessage);
    }
}
