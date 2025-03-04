import { Page, Locator } from '@playwright/test';
import { Fixture, Given } from 'playwright-bdd/decorators';

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

    @Given('the property type is {string}')
    async inputPropertyType(propertyType: string) {
        await this.propertyType.selectOption(propertyType);

        await this.zipCode.click();
        await this.zipCode.fill('12345');
    }

    async inputPurchaseInformation(prpoertyType: string, zipCode: string, purchasePrice: string, downPayment: string) {
        await this.inputPropertyType(prpoertyType);
        
        await this.purchasePrice.click();
        await this.purchasePrice.fill(purchasePrice);
        
        await this.zipCode.click();
        await this.zipCode.fill(zipCode);
        
        await this.downPayment.click();
        await this.downPayment.fill(downPayment);
    }
}