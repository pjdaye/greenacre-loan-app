import { Page, Locator } from '@playwright/test';
import { Fixture } from 'playwright-bdd/decorators';

export @Fixture('loanInfoPage') class LoanInfoPage {
    readonly page: Page;
    readonly loanType: Locator;
    readonly loanAmount: Locator;
    readonly loanTerm: Locator;

    constructor(page: Page) {
        this.page = page;
        this.loanType = page.locator('select[name="loanType"]');
        this.loanAmount = page.getByPlaceholder('Loan Amount');
        this.loanTerm = page.locator('select[name="term"]');
    }
    
    async inputLoanInformation(loanType: string, loanAmount: string, loanTerm: string) {
        await this.loanType.selectOption(loanType)
        
        await this.loanAmount.click();
        await this.loanAmount.fill(loanAmount);

        await this.loanTerm.selectOption(loanTerm);
    }
}