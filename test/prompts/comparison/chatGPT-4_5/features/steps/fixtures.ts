import { test as base } from 'playwright-bdd';
import { LoanApplicationPage } from './loanApplicationPage';
import { BorrowerInfoPage } from './borrowerInfoPage';
import { PurchaseInfoPage } from './purchaseInfoPage';
import { LoanInfoPage } from './loanInfoPage';
import { LoanApprovalPage } from './loanApprovalPage';

type LoanApplicationFixtures = {
    loanApplicationPage: LoanApplicationPage;
    borrowerInfoPage: BorrowerInfoPage;
    purchaseInfoPage: PurchaseInfoPage;
    loanInfoPage: LoanInfoPage;
    loanApprovalPage: LoanApprovalPage;
};

export const test = base.extend<LoanApplicationFixtures>({
    loanApplicationPage: ({ page }, use) => use(new LoanApplicationPage(page)),
    borrowerInfoPage: ({ page }, use) => use(new BorrowerInfoPage(page)),
    purchaseInfoPage: ({ page }, use) => use(new PurchaseInfoPage(page)),
    loanInfoPage: ({ page }, use) => use(new LoanInfoPage(page)),
    loanApprovalPage: ({ page }, use) => use(new LoanApprovalPage(page)),
});
