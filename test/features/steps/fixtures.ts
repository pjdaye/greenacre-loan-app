import { test as base } from 'playwright-bdd';
import { LoanApplicationPage } from './loanApplicationPage';

export const test = base.extend<{ loanApplicationPage: LoanApplicationPage }>({
    loanApplicationPage: ({ page }, use) => use(new LoanApplicationPage(page)),
});
