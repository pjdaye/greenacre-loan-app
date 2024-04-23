import dotenv from 'dotenv';
import evaluateApplication from './rules-engine.js';
dotenv.config();

export default class Loan {
    constructor(borrowerFico, coborrowerFico, propertyType, purchasePrice, downPayment, loanType, loanAmount, term){
        this.prime = Number(process.env.PRIME_RATE);
        this.step = Number(process.env.STEP_RATE);
        this.mortgageProgram;
        this.rate;
        this.programAdjustment;
        this.loanTypeAdjustment;
        this.borrowerFicoAdjustment;
        this.coborrowerFicoAdjustment;

        this.borrowerFico = Number(borrowerFico);
        console.log(this.borrowerFico);
        this.coborrowerFico = Number(coborrowerFico);
        console.log(this.coborrowerFico);
        this.propertyType = propertyType;
        console.log(this.propertyType);
        this.purchasePrice = Number(purchasePrice);
        console.log(this.purchasePrice);
        this.downPayment = Number(downPayment);
        console.log(this.downPayment);
        this.loanType = loanType;
        console.log(this.loanType);
        this.loanAmount = Number(loanAmount);
        console.log(this.loanAmount);
        this.term = term.replace('yr', '');
        console.log(term);
        this.ltv = (loanAmount / purchasePrice) * 100;
        console.log(this.ltv);
    }

    async processApplication() {
        this.mortgageProgram = await evaluateApplication(this.borrowerFico, this.coborrowerFico, this.propertyType, this.ltv, this.loanAmount, this.loanType, this.term);

        if (this.mortgageProgram == 'denied') {
            return {
                approval: false,
                program: 'none',
                rate: 0,
            };
        } else {
            this.programAdjustment = this.getMortgageProgramAdjustment();
            this.loanTypeAdjustment = this.getLoanTypeAdjustment();
            this.borrowerFicoAdjustment = this.getBorrowerFicoAdjustment();
            this.coborrowerFicoAdjustment = this.getCoborrowerFicoAdjustment();

            this.rate = this.prime + ((this.programAdjustment + this.loanTypeAdjustment + this.borrowerFicoAdjustment + this.coborrowerFicoAdjustment) * this.step);
            return {
                approval: true,
                program: this.mortgageProgram,
                rate: this.rate
            };
        }
    }

    getMortgageProgramAdjustment() {
        switch (this.mortgageProgram) {
            case 'jumbo':
                return -2;
            case 'conventional':
                return -1;
            case 'fha':
                return 1;
            default:
                return 0;
        }
    }

    getLoanTypeAdjustment() {
        if (this.loantype === 'adjustable') {
            return -1.5;
        } else {
            return 0;
        }
    }

    getBorrowerFicoAdjustment() {
        if (this.borrowerFico >= 700 && this.borrowerFico < 760) {
            return 1;
        } else if (this.borrowerFico >= 680 && this.borrowerFico < 700) {
            return 2;
        } else if (this.borrowerFico >= 660 && this.borrowerFico < 680) {
            return 3;
        } else if (this.borrowerFico >= 640 && this.borrowerFico < 660) {
            return 4;
        } else if (this.borrowerFico >= 620 && this.borrowerFico < 640) {
            return 5;
        } else if (this.borrowerFico < 620) {
            return 6;
        } else {
            return 0;
        }
    }

    getCoborrowerFicoAdjustment() {
        if (this.coborrowerFico != null) {
            if (this.coborrowerFico >= 520 && this.coborrowerFico < 620) {
                return 1;
            } else if (this.coborrowerFico >= 420 && this.coborrowerFico < 520) {
                return 2;
            } else if (this.coborrowerFico >= 320 && this.coborrowerFico < 420) {
                return 3;
            } else if (this.coborrowerFico < 320) {
                return 4;
            } else {
                return 0;
            }
        }
    }
}