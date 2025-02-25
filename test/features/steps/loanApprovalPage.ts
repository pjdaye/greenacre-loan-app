import { Page, Locator, expect } from '@playwright/test';
import { Fixture, Then } from 'playwright-bdd/decorators';

export @Fixture('loanApprovalPage') class LoanApprovalPage {
    readonly page: Page;
    readonly approvalLabel: Locator;
    readonly denialLabel: Locator;
    readonly interestRateLabel: Locator;
    readonly loanProgramTitleLabel: Locator;

    constructor(page: Page) {
        this.page = page;
        this.approvalLabel = page.getByText('APPROVED!');
        this.denialLabel = page.getByText('DENIED');
        this.interestRateLabel = page.getByText('%');
        this.loanProgramTitleLabel = page.getByText('Your Loan Program Is:');
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