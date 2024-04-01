"""
Oracle for the Greenacre project
"""

from rulengine.core import DataType, RuleOperator, ConditionOperator, Rule, Condition, ExecutableCondition
from rulengine import execute

prime = 4.000
step = 0.125

class Loan:
    def __init__(self, borrower_fico, coborrower_fico, property_type, purchase_price, down_payment, loan_amount, loan_type, loan_period):
        self.borrower_fico = borrower_fico
        self.coborrower_fico = coborrower_fico
        self.property_type = property_type
        self.purchase_price = purchase_price
        self.down_payment = down_payment
        self.loan_amount = loan_amount
        self.loan_type = loan_type
        self.loan_period = loan_period
        self.ltv = (loan_amount * 100) / purchase_price

def rate(base, borrower_fico, coborrower_fico, type, program):
    if type == 'Adjustable':
        base -= 1.5
    
    # Borrower component
    borrower_pts = 0
    if 700 <= borrower_fico < 760:
        borrower_pts = 1
    elif 680 <= borrower_fico < 700:
        borrower_pts = 2
    elif 660 <= borrower_fico < 680:
        borrower_pts = 3
    elif 640 <= borrower_fico < 660:
        borrower_pts = 4
    elif 620 <= borrower_fico < 640:
        borrower_pts = 5
    elif borrower_fico < 620:
        borrower_pts = 6
    
    # Co-Borrower component
    coborrower_pts = 0
    if 520 <= coborrower_fico < 620:
        coborrower_pts = 1
    elif 420 <= coborrower_fico < 520:
        coborrower_pts = 2
    elif 320 <= coborrower_fico < 420:
        coborrower_pts = 3
    elif coborrower_fico < 320:
        coborrower_pts = 4
    
    final_rate = base + (borrower_pts * step) + (coborrower_pts * step)
    return final_rate

def conventional_elligible(loan):
    # Conventional Mortgage Rules
    conv_bfico_lbound_condition = Condition(value = loan.borrower_fico, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 620, data_type = DataType.INTEGER)
    conv_bfico_ubound_condition = Condition(value = loan.borrower_fico, operator = ConditionOperator.LESS_EQUAL, comparison_value = 850, data_type = DataType.INTEGER)
    conv_property_condition = Condition(value = loan.property_type, operator = ConditionOperator.CONTAINS, comparison_value = {'SFR', 'Condo', 'Townhouse', 'Multi-Family'}, data_type = DataType.STRING)
    conv_ltv_condition = Condition(value = loan.ltv, operator = ConditionOperator.LESS_EQUAL, comparison_value = 80, data_type = DataType.INTEGER)
    conv_amount_lbound_condition = Condition(value = loan.loan_amount, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 50000, data_type = DataType.INTEGER)
    conv_amount_ubound_condition = Condition(value = loan.loan_amount, operator = ConditionOperator.LESS, comparison_value = 1000000, data_type = DataType.INTEGER)

    if loan.coborrower_fico is not None:
        conv_cfico_lbound_condition = Condition(value = loan.coborrower_fico, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 520, data_type = DataType.INTEGER)
        conv_cfico_ubound_condition = Condition(value = loan.coborrower_fico, operator = ConditionOperator.LESS_EQUAL, comparison_value = 850, data_type = DataType.INTEGER)
        conventional_rules = Rule(operator = RuleOperator.AND, conditions = [ conv_bfico_lbound_condition,
                                                                              conv_bfico_ubound_condition,
                                                                              conv_cfico_lbound_condition,
                                                                              conv_cfico_ubound_condition,
                                                                              conv_property_condition,
                                                                              conv_ltv_condition,
                                                                              conv_amount_lbound_condition,
                                                                              conv_amount_ubound_condition ])
    else:
        conventional_rules = Rule(operator = RuleOperator.AND, conditions = [ conv_bfico_lbound_condition,
                                                                              conv_bfico_ubound_condition,
                                                                              conv_property_condition,
                                                                              conv_ltv_condition,
                                                                              conv_amount_lbound_condition,
                                                                              conv_amount_ubound_condition ])
    
    is_approved = execute([conventional_rules])
    return is_approved

def fha_elligible(loan):
    # FHA Mortgage Rules
    fha_bfico_lbound_condition = Condition(value = loan.borrower_fico, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 300, data_type = DataType.INTEGER)
    fha_bfico_ubound_condition = Condition(value = loan.borrower_fico, operator = ConditionOperator.LESS_EQUAL, comparison_value = 850, data_type = DataType.INTEGER)
    fha_property_condition = Condition(value = loan.property_type, operator = ConditionOperator.CONTAINS, comparison_value = {'SFR', 'Condo', 'Townhouse'}, data_type = DataType.STRING)
    fha_amount_lbound_condition = Condition(value = loan.loan_amount, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 50000, data_type = DataType.INTEGER)
    fha_amount_ubound_condition = Condition(value = loan.loan_amount, operator = ConditionOperator.LESS, comparison_value = 418000, data_type = DataType.INTEGER)

    if loan.coborrower_fico is not None:
        fha_cfico_lbound_condition = Condition(value = loan.coborrower_fico, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 300, data_type = DataType.INTEGER)
        fha_cfico_ubound_condition = Condition(value = loan.coborrower_fico, operator = ConditionOperator.LESS_EQUAL, comparison_value = 850, data_type = DataType.INTEGER)
        fha_rules = Rule(operator = RuleOperator.AND, conditions = [ fha_bfico_lbound_condition,
                                                                     fha_bfico_ubound_condition,
                                                                     fha_cfico_lbound_condition,
                                                                     fha_cfico_ubound_condition,
                                                                     fha_property_condition,
                                                                     fha_amount_lbound_condition,
                                                                     fha_amount_ubound_condition ])
    else:
        fha_rules = Rule(operator = RuleOperator.AND, conditions = [ fha_bfico_lbound_condition,
                                                                     fha_bfico_ubound_condition,
                                                                     fha_property_condition,
                                                                     fha_amount_lbound_condition,
                                                                     fha_amount_ubound_condition ])
    
    is_approved = execute([fha_rules])
    return is_approved

def jumbo_elligible(loan):
    # Jumbo Mortgage Rules
    jumbo_bfico_lbound_condition = Condition(value = loan.borrower_fico, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 660, data_type = DataType.INTEGER)
    jumbo_bfico_ubound_condition = Condition(value = loan.borrower_fico, operator = ConditionOperator.LESS_EQUAL, comparison_value = 850, data_type = DataType.INTEGER)
    jumbo_property_condition = Condition(value = loan.property_type, operator = ConditionOperator.CONTAINS, comparison_value = {'SFR', 'Condo', 'Townhouse', 'Multi-Family'}, data_type = DataType.STRING)
    jumbo_ltv_condition = Condition(value = loan.ltv, operator = ConditionOperator.LESS_EQUAL, comparison_value = 80, data_type = DataType.INTEGER)
    jumbo_amount_lbound_condition = Condition(value = loan.loan_amount, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 418000, data_type = DataType.INTEGER)
    jumbo_amount_ubound_condition = Condition(value = loan.loan_amount, operator = ConditionOperator.LESS, comparison_value = 1000000, data_type = DataType.INTEGER)
    
    if loan.coborrower_fico is not None:
        jumbo_cfico_lbound_condition = Condition(value = loan.coborrower_fico, operator = ConditionOperator.GREATER_EQUAL, comparison_value = 620, data_type = DataType.INTEGER)
        jumbo_cfico_ubound_condition = Condition(value = loan.coborrower_fico, operator = ConditionOperator.LESS_EQUAL, comparison_value = 850, data_type = DataType.INTEGER)
        jumbo_rules = Rule(operator = RuleOperator.AND, conditions = [ jumbo_bfico_lbound_condition,
                                                                       jumbo_bfico_ubound_condition,
                                                                       jumbo_cfico_lbound_condition,
                                                                       jumbo_cfico_ubound_condition,
                                                                       jumbo_property_condition,
                                                                       jumbo_ltv_condition,
                                                                       jumbo_amount_lbound_condition,
                                                                       jumbo_amount_ubound_condition ])
    else:
        jumbo_rules = Rule(operator = RuleOperator.AND, conditions = [ jumbo_bfico_lbound_condition,
                                                                       jumbo_bfico_ubound_condition,
                                                                       jumbo_property_condition,
                                                                       jumbo_ltv_condition,
                                                                       jumbo_amount_lbound_condition,
                                                                       jumbo_amount_ubound_condition ])

    is_approved = execute([jumbo_rules])
    return is_approved

def mortgage_oracle(loan):
    is_approved = False
    mortgage_program = None
    base_rate = prime
    interest_rate = 0

    if jumbo_elligible(loan):
        mortgage_program = 'Jumbo'
        base_rate = prime - (2 * step)
    elif conventional_elligible(loan):
        mortgage_program = 'Conventional'
        base_rate = prime - (2 * step)
    elif fha_elligible(loan):
        mortgage_program = 'FHA'
        base_rate = prime - step
    
    if mortgage_program is not None:
        is_approved = True
        interest_rate = rate(base_rate, loan.borrower_fico, loan.coborrower_fico, loan.loan_type, mortgage_program)
    
    return is_approved, mortgage_program, interest_rate

if __name__ == '__main__':
    # Borrower profile
    test_loan = Loan(borrower_fico = 620,
                    coborrower_fico = 620,
                    property_type = 'SFR',
                    purchase_price = 200000,
                    down_payment = 40000,
                    loan_amount = 160000,
                    loan_type = 'Fixed',
                    loan_period = 30)
    
    print('=====================================')
    print('Mortgage considered for approval...')

    is_approved, program, rate = mortgage_oracle(test_loan)

    if is_approved:
        print('=====================================')
        print('Your loan is: approved')
        print('Your interest rate is: {}'.format(rate))
        print('Your loan program is: {}'.format(program))
    else:
        print('=====================================')
        print('Your loan is: denied')
