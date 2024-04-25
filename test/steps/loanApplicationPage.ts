import { Page, Locator, expect } from '@playwright/test';

export class LoanApplicationPage {
    readonly page: Page;
    readonly borrowerFirstName: Locator;
    readonly borrowerLastName: Locator;
    readonly borrowerFico: Locator;
    readonly coborrowerFirstName: Locator;
    readonly coborrowerLastName: Locator;
    readonly coborrowerFico: Locator;
    readonly propertyType: Locator;
    readonly zipCode: Locator;
    readonly purchasePrice: Locator;
    readonly downPayment: Locator;
    readonly loanType: Locator;
    readonly loanAmount: Locator;
    readonly loanTerm: Locator;
    readonly submitButton: Locator;
    readonly camcelButton: Locator;
    readonly approvalLabel: Locator;
    readonly denialLabel: Locator;
    readonly interestRateLabel: Locator;
    readonly pageTitle: string;

    constructor(page: Page) {
        this.page = page;
        this.borrowerFirstName = page.locator('input[name="borrowerFirstName"]');
        this.borrowerLastName = page.locator('input[name="borrowerLastName"]');
        this.borrowerFico = page.locator('input[name="borrowerFico"]');
        this.coborrowerFirstName = page.locator('input[name="coborrowerFirstName"]');
        this.coborrowerLastName = page.locator('input[name="coborrowerLastName"]');
        this.coborrowerFico = page.locator('input[name="coborrowerFico"]');
        this.propertyType = page.locator('select[name="propertyType"]');
        this.zipCode = page.getByPlaceholder('Zip Code');
        this.purchasePrice = page.getByPlaceholder('Purchase Price');
        this.downPayment = page.getByPlaceholder('Down Payment');
        this.loanType = page.locator('select[name="loanType"]');
        this.loanAmount = page.getByPlaceholder('Loan Amount');
        this.loanTerm = page.locator('select[name="term"]');
        this.submitButton = page.getByRole('button', { name: 'Submit Loan' });
        this.camcelButton = page.getByRole('button', { name: 'Cancel' });
        this.approvalLabel = page.getByText('APPROVED!');
        this.denialLabel = page.getByText('DENIED');
        this.interestRateLabel = page.getByText('%');
        this.pageTitle = 'Greenacre Loans';
    }

    async goto() {
        await this.page.goto('/');
        await expect(this.page).toHaveTitle(this.pageTitle);
    }

    async inputBorrowerInformation(borrowerFName: string, borrowerLName: string, borrowerFico: string) {
        await this.borrowerFirstName.click();
        await this.borrowerFirstName.fill(borrowerFName);

        await this.borrowerLastName.click();
        await this.borrowerLastName.fill(borrowerLName);

        await this.borrowerFico.click();
        await this.borrowerFico.fill(borrowerFico);
    }

    async inputCoborrowerInformation(coborrowerFName: string, coborrowerLName: string, coborrowerFico: string) {
        await this.coborrowerFirstName.click();
        await this.coborrowerFirstName.fill(coborrowerFName);
        
        await this.coborrowerLastName.click();
        await this.coborrowerLastName.fill(coborrowerLName);
        
        await this.coborrowerFico.click();
        await this.coborrowerFico.fill(coborrowerFico);
    }

    async inputPurchaseInformation(prpoertyType: string, zipCode: string, purchasePrice: string, downPayment: string) {
        await this.propertyType.selectOption(prpoertyType);
        
        await this.purchasePrice.click();
        await this.purchasePrice.fill(purchasePrice);
        
        await this.zipCode.click();
        await this.zipCode.fill(zipCode);
        
        await this.downPayment.click();
        await this.downPayment.fill(downPayment);
    }

    async inputLoanInformation(loanType: string, loanAmount: string, loanTerm: string) {
        await this.loanType.selectOption(loanType)
        
        await this.loanAmount.click();
        await this.loanAmount.fill(loanAmount);

        await this.loanTerm.selectOption(loanTerm);
    }

    async submitForApproval() {
        await this.submitButton.click();
    }

    async verifyApproval() {
        await expect(this.approvalLabel).toBeVisible();
    }

    async verifyInterestRate(interestRate: string) {
        await expect(this.interestRateLabel).toContainText(interestRate);
    }

    async verifyLoanProgram(loanProgram: string) {
        await expect(this.page.getByText(`${loanProgram}`)).toBeVisible();
    }
}
