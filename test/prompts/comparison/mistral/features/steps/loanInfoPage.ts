import { Page, Locator } from '@playwright/test';
import { Fixture, Given } from 'playwright-bdd/decorators';

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

    @Given('the loan type is {string}')
    async inputLoanType(loanType: string) {
        await this.loanType.selectOption(loanType);
    }

    @Given('the loan amount is ${string}')
    async inputLoanAmount(loanAmount: string) {
        await this.loanAmount.click();
        await this.loanAmount.fill(loanAmount);
    }

    @Given('the loan period is {string}')
    async inputLoanTerm(loanTerm: string) {
        await this.loanTerm.selectOption(loanTerm);
    }
    
    async inputLoanInformation(loanType: string, loanAmount: string, loanTerm: string) {
        await this.inputLoanType(loanType);
        await this.inputLoanAmount(loanAmount);
        await this.inputLoanTerm(loanTerm);
    }
}