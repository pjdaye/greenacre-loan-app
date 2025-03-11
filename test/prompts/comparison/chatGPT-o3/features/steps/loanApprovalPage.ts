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

    @Then('the system should return {string}, {string}, and the appropriate rate')
    async verifyLoanApproval(approval: string, loanProgram: string) {
        if (approval === 'Approval') {
            await this.verifyApproval();
            await this.verifyInterestRateValidPercentage();
        } else {
            await this.verifyDenial();
        }

        await this.verifyLoanProgram(loanProgram);
    }

    async verifyApproval() {
        await expect(this.approvalLabel).toBeVisible();
    }

    async verifyDenial() {
        await expect(this.denialLabel).toBeVisible();
    }

    async verifyLoanProgram(loanProgram: string) {
        if (loanProgram === 'NA') {
            await expect(this.loanProgramTitleLabel).not.toBeVisible();
            return
        }

        await expect(this.page.getByText(`${loanProgram}`)).toBeVisible();
    }

    async verifyInterestRateValidPercentage() {
        let interestRateValue = await this.interestRateLabel.innerText();
        await expect(interestRateValue).toMatch(/^[0-9]+(\.[0-9]{1,3})?%$/);
    }
}