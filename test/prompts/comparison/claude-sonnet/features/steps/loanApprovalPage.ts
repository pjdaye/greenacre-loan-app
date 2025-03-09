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
    
    @Then('I should see a {string} status')
    async verifyStatus(status: string) {
        if (status === 'Approval') {
            await expect(this.approvalLabel).toBeVisible();
        } else {
            await expect(this.denialLabel).toBeVisible();
        }
    }

    @Then('an interest rate should be displayed')
    async verifyInterestRateExists() {
        await expect(this.interestRateLabel).toBeVisible();
    }

    @Then('the approved program should be {string}')
    async verifyLoanProgram(loanProgram: string) {
        if (loanProgram === 'NA') {
            await expect(this.loanProgramTitleLabel).not.toBeVisible();
            return
        }
        
        await expect(this.page.getByText(`${loanProgram}`)).toBeVisible();
    }
}