import { Page, Locator } from '@playwright/test';
import { Fixture, When} from 'playwright-bdd/decorators';

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
    
    @When('the Loan Amount is {string}')
    async inputLoanAmount(loanAmount: string) {
        await this.loanAmount.click();
        await this.loanAmount.fill(loanAmount);
    }

    @When('the Loan Type is {string}')
    async inputLoanType(loanType: string) {
        await this.loanType.selectOption(loanType)
    }

    @When('the Loan Period is {string} years')
    async inputLoanTerm(loanTerm: string) {
        await this.loanTerm.selectOption(loanTerm + ' years');
    }
}