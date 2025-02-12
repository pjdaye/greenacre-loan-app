import { Page, Locator, expect } from '@playwright/test';
import { DataTable } from 'playwright-bdd';
import { Fixture, Given, When, Then } from 'playwright-bdd/decorators';

export @Fixture('loanApplicationPage') class LoanApplicationPage {
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
    readonly loanProgramTitleLabel: Locator;
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
        this.loanProgramTitleLabel = page.getByText('Your Loan Program Is:');
        this.pageTitle = 'Greenacre Loans';
    }

    @Given('I am on the loan application page')
    async goto() {
        await this.page.goto('/');
        await expect(this.page).toHaveTitle(this.pageTitle);
    }

    @When('I submit a loan application with the following details:')
    async fillLoanApplication(data: DataTable) {
        const values = data.rowsHash();
        const purchasePrice = String((Math.round((Number(values['loanAmount']) / (Number(values['ltv']) / 100)) * 100) / 100).toFixed(2));
        const downPayment = String(Number(purchasePrice) - Number(values['loanAmount']));
        const loanTerm = values['loanPeriod'] + ' years';
        await this.inputBorrowerInformation(values['borrowerFirstName'], values['borrowerLastName'], values['borrowerFICO']);
        await this.inputCoborrowerInformation(values['coBorrowerFirstName'], values['coBorrowerLastName'], values['coBorrowerFICO']);
        await this.inputPurchaseInformation(values['propertyType'], values['zipCode'], purchasePrice, downPayment);
        await this.inputLoanInformation(values['loanType'], values['loanAmount'], loanTerm);
        await this.submitForApproval();
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
        if (coborrowerFico === 'None') {
            return
        }
        
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

    @Then('the loan application should be approved')
    async verifyApproval() {
        await expect(this.approvalLabel).toBeVisible();
    }

    @Then('the loan application should be denied')
    async verifyDenial() {
        await expect(this.denialLabel).toBeVisible();
    }

    @Then('the interest rate should be {string}')
    async verifyInterestRate(interestRate: string) {
        if (interestRate === 'NA') {
            await expect(this.interestRateLabel).not.toBeVisible();
            return
        }
        
        await expect(this.interestRateLabel).toContainText(interestRate);
    }

    @Then('the loan program should be {string}')
    async verifyLoanProgram(loanProgram: string) {
        if (loanProgram === 'NA') {
            await expect(this.loanProgramTitleLabel).not.toBeVisible();
            return
        }
        
        await expect(this.page.getByText(`${loanProgram}`)).toBeVisible();
    }

    @Then('the interest rate should be a valid percentage')
    async verifyInterestRateValidPercentage() {
        let interestRateValue = await this.interestRateLabel.innerText();
        await expect(interestRateValue).toMatch(/^[0-9]+(\.[0-9]{1,2})?%$/);
    }
}
