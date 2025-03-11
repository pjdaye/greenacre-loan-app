import { Page, Locator } from '@playwright/test';
import { Fixture, When } from 'playwright-bdd/decorators';

export @Fixture('borrowerInfoPage') class BorrowerInfoPage {
    readonly page: Page;
    readonly borrowerFirstName: Locator;
    readonly borrowerLastName: Locator;
    readonly borrowerFico: Locator;
    readonly coborrowerFirstName: Locator;
    readonly coborrowerLastName: Locator;
    readonly coborrowerFico: Locator;
    
    constructor(page: Page) {
        this.page = page;
        this.borrowerFirstName = page.locator('input[name="borrowerFirstName"]');
        this.borrowerLastName = page.locator('input[name="borrowerLastName"]');
        this.borrowerFico = page.locator('input[name="borrowerFico"]');
        this.coborrowerFirstName = page.locator('input[name="coborrowerFirstName"]');
        this.coborrowerLastName = page.locator('input[name="coborrowerLastName"]');
        this.coborrowerFico = page.locator('input[name="coborrowerFico"]');
    }

    @When('a borrower with a Borrower FICO of {string} and a Co-Borrower FICO of {string}')
    async inputBorrowerAndCoBorrowerInformation(borrowerFico: string, coborrowerFico: string) {
        await this.inputBorrowerInformation('BFistName', 'BLastName', borrowerFico);
        await this.inputCoborrowerInformation('CBFistName', 'CBLastName', coborrowerFico);
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
}