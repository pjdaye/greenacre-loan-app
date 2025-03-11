import { Page, Locator } from '@playwright/test';
import { Fixture, When } from 'playwright-bdd/decorators';

export @Fixture('purchaseInfoPage') class PurchaseInfoPage {
    readonly page: Page;
    readonly propertyType: Locator;
    readonly zipCode: Locator;
    readonly purchasePrice: Locator;
    readonly downPayment: Locator;
    
    constructor(page: Page) {
        this.page = page;
        this.propertyType = page.locator('select[name="propertyType"]');
        this.zipCode = page.getByPlaceholder('Zip Code');
        this.purchasePrice = page.getByPlaceholder('Purchase Price');
        this.downPayment = page.getByPlaceholder('Down Payment');
    }

    @When('the property type is {string}')
    async inputPropertyType(propertyType: string) {
        await this.propertyType.selectOption(propertyType);
    }
}