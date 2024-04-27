'use strict'
import { Engine, Rule } from 'json-rules-engine';

export default async function evaluateApplication(borrowerFico, coborrowerFico, propertyType, loanToValue, loanAmount, loanType, termYrs) {
    let engine = new Engine();

    let jumboRule = new Rule({
        conditions: {
            all: [{
                all: [{
                    fact: 'bfico',
                    operator: 'greaterThanInclusive',
                    value: 660
                }, {
                    fact: 'bfico',
                    operator: 'lessThanInclusive',
                    value: 850
                }]
            }, {
                any: [{
                    all: [{
                        fact: 'cfico',
                        operator: 'greaterThanInclusive',
                        value: 620
                    }, {
                        fact: 'cfico',
                        operator: 'lessThanInclusive',
                        value: 850
                    }]
                }, {
                    fact: 'cfico',
                    operator: 'equal',
                    value: null
                }]
            }, {
                fact: 'proptype',
                operator: 'in',
                value: ['sfr', 'condo', 'townhouse', 'multi']
            }, {
                fact: 'ltv',
                operator: 'lessThanInclusive',
                value: 80
            }, {
                all: [{
                    fact: 'loanamount',
                    operator: 'greaterThanInclusive',
                    value: 418000
                }, {
                    fact: 'loanamount',
                    operator: 'lessThanInclusive',
                    value: 1000000
                }]
            }, {
                fact: 'loantype',
                operator: 'in',
                value: ['fixed', 'adjustable']
            }, {
                fact: 'term',
                operator: 'in',
                value: ['15', '30', '40']
            }]
        },
        onSuccess: async function (event, almanac) {
            almanac.addFact('jumboEligible', true);
        },
        onFailure: async function (event, almanac) {
            almanac.addFact('jumboEligible', false);
        },
    });

    engine.addRule(jumboRule);

    let conventionalRule = new Rule({
        conditions: {
            all: [{
                all: [{
                    fact: 'bfico',
                    operator: 'greaterThanInclusive',
                    value: 620
                }, {
                    fact: 'bfico',
                    operator: 'lessThanInclusive',
                    value: 850
                }]
            }, {
                any: [{
                    all: [{
                        fact: 'cfico',
                        operator: 'greaterThanInclusive',
                        value: 520
                    }, {
                        fact: 'cfico',
                        operator: 'lessThanInclusive',
                        value: 850
                    }]
                }, {
                    fact: 'cfico',
                    operator: 'equal',
                    value: null
                }]
            }, {
                fact: 'proptype',
                operator: 'in',
                value: ['sfr', 'condo', 'townhouse', 'multi']
            }, {
                fact: 'ltv',
                operator: 'lessThanInclusive',
                value: 80
            }, {
                all: [{
                    fact: 'loanamount',
                    operator: 'greaterThanInclusive',
                    value: 50000
                }, {
                    fact: 'loanamount',
                    operator: 'lessThanInclusive',
                    value: 1000000
                }]
            }, {
                fact: 'loantype',
                operator: 'in',
                value: ['fixed', 'adjustable']
            }, {
                fact: 'term',
                operator: 'in',
                value: ['10', '15', '30', '40']
            }]
        },
        onSuccess: async function (event, almanc) {
            almanc.addFact('conventionalEligible', true);
        },
        onFailure: async function (event, almanc) {
            almanc.addFact('conventionalEligible', false);
        },
    });

    engine.addRule(conventionalRule);

    let FhaRule = new Rule({
        conditions: {
            all: [{
                all: [{
                    fact: 'bfico',
                    operator: 'greaterThanInclusive',
                    value: 300
                }, {
                    fact: 'bfico',
                    operator: 'lessThanInclusive',
                    value: 850
                }]
            }, {
                any: [{
                    all: [{
                        fact: 'cfico',
                        operator: 'greaterThanInclusive',
                        value: 300
                    }, {
                        fact: 'cfico',
                        operator: 'lessThanInclusive',
                        value: 850
                    }]
                }, {
                    fact: 'cfico',
                    operator: 'equal',
                    value: null
                }]
            }, {
                fact: 'proptype',
                operator: 'in',
                value: ['sfr', 'condo', 'townhouse']
            }, {
                fact: 'ltv',
                operator: 'lessThanInclusive',
                value: 100
            }, {
                all: [{
                    fact: 'loanamount',
                    operator: 'greaterThanInclusive',
                    value: 50000
                }, {
                    fact: 'loanamount',
                    operator: 'lessThanInclusive',
                    value: 418000
                }]
            }, {
                fact: 'loantype',
                operator: 'equal',
                value: 'fixed'
            }, {
                fact: 'term',
                operator: 'in',
                value: ['15', '30']
            }]
        },
        onSuccess: async function (event, almanac) {
            almanac.addFact('fhaEligible', true);
        },
        onFailure: async function (event, almanac) {
            almanac.addFact('fhaEligible', false);
        },
    });

    engine.addRule(FhaRule);

    let facts = {
        bfico: borrowerFico,
        cfico: coborrowerFico,
        proptype: propertyType,
        ltv: loanToValue,
        loanamount: loanAmount,
        loantype: loanType,
        term: termYrs
    }

    let results = await engine.run(facts);

    let isJumboEligible = await results.almanac.factValue('jumboEligible');
    let isConventionalEligible = await results.almanac.factValue('conventionalEligible');
    let isFhaEligible = await results.almanac.factValue('fhaEligible');

    if (isJumboEligible) {
        return 'jumbo';
    } else if (!isJumboEligible && isConventionalEligible) {
        return 'conventional';
    } else if (!isJumboEligible && !isConventionalEligible && isFhaEligible) {
        return 'fha';
    } else {
        return 'denied';
    }
}
