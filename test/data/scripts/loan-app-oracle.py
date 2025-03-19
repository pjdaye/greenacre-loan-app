import csv

def determine_loan_program(fico, co_fico, property_type, loan_amount, ltv, loan_type, loan_period):
    # there should have been an upper bound for the loan_amount, which was missing
    if fico >= 660 and (co_fico is None or co_fico >=620) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount >=418000 and loan_amount <= 1000000 and ltv <=80 and loan_period in [15,30,40]:
        return "Jumbo"
    # there was an error here, requiring loan_amount <= 417999 instead of <= 1000000 and additionally, should have included a lower bound: loan_amount >= 50000
    elif fico >= 620 and (co_fico is None or co_fico >=520) and property_type in ["SFR","Condo","Townhouse","MultiFamily"] and loan_amount >= 50000 and loan_amount <= 1000000 and ltv <=80 and loan_period in [10,15,30,40]:
        return "Conventional"
    elif (property_type in ["SFR","Condo","Townhouse"] and loan_amount >= 50000 and loan_amount <=418000 and ltv <=100 and loan_period in [15,30] and loan_type=="Fixed" and fico >=300):
        return "FHA"
    else:
        return "Denial"

def get_property_type(property_type):
    if property_type == 'SFR':
        return 'Single Family'
    elif property_type == 'Condo':
        return 'Condominium'
    elif property_type == 'Townhouse':
        return 'Townhouse'
    elif property_type == 'MultiFamily':
        return 'Multi-Family Unit'
    elif property_type == 'Commercial':
        return 'Commercial'
    else:
        return 'Unknown'

if __name__ == "__main__":
    # read in the input data (csv file)
    input_file = '../LoanApp_TestData.csv'
    output_file = '../LoanApp_Results.txt'
    with open(output_file, 'w') as f:
        f.write("| Borrower FICO | Co-Borrower FICO | Property Type | Loan Amount | LTV | Loan Type | Loan Period | Approval | Loan Program |")
        with open(input_file, 'r') as g:
            reader = csv.DictReader(g)
            for row in reader:
                fico = int(row['BorrowerFICO'])
                co_fico = None if row['CoBorrowerFICO'] == 'none' else int(row['CoBorrowerFICO'])
                property_type = row['PropertyType']
                loan_amount = int(row['LoanAmount'])
                ltv = float(row['LTV'])
                loan_type = row['LoanType']
                loan_period = int(row['LoanPeriod'])
                result = determine_loan_program(fico, co_fico, property_type, loan_amount, ltv, loan_type, loan_period)
                property_type = get_property_type(property_type)
                if result == 'Denial':
                    f.write(f"\n| {fico} | {co_fico} | {property_type} | {loan_amount} | {ltv} | {loan_type} | {loan_period} | {result} | N/A |")
                else:
                    f.write(f"\n| {fico} | {co_fico} | {property_type} | {loan_amount} | {ltv} | {loan_type} | {loan_period} | Approved | {result} |")
