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

    @Then('the application result is {string} with {string}')
    async verifyApproval(approval: string, loanProgram: string) {
        if (approval === 'Approved') {
            await expect(this.approvalLabel).toBeVisible();
        } else {
            await expect(this.denialLabel).toBeVisible();
        }

        await this.verifyLoanProgram(loanProgram);
    }

    async verifyLoanProgram(loanProgram: string) {
        if (loanProgram === 'N/A') {
            await expect(this.loanProgramTitleLabel).not.toBeVisible();
            return
        }

        await expect(this.page.getByText(`${loanProgram}`)).toBeVisible();
    }
}