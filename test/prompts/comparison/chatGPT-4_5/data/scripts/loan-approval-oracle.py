# Oracle & Validation Function

import csv

def loan_approval_oracle(borrower_fico, coborrower_fico, property_type, ltv, amount, loan_type, period):
    if (660 <= borrower_fico <= 850 and ltv <= 80 and 418000 <= amount <= 1000000
        and loan_type in ['Fixed', 'Adjustable'] and property_type in ['SFR', 'Condo', 'Townhouse', 'Multi-Family']
        and period in [15,30,40]):
        return ('Approval', 'Jumbo', 'Rate')
    elif (620 <= borrower_fico <= 850 and ltv <= 80 and 50000 <= amount <= 1000000
          and loan_type in ['Fixed', 'Adjustable'] and property_type != 'Commercial'
          and period in [10,15,30,40]):
        return ('Approval', 'Conventional', 'Rate')
    elif (300 <= borrower_fico <= 850 and ltv <= 100 and 50000 <= amount <= 418000
          and loan_type == 'Fixed' and property_type in ['SFR', 'Condo', 'Townhouse']
          and period in [15,30]):
        return ('Approval', 'FHA', 'Rate')
    else:
        return ('Denial', 'NA', 'NA')

if __name__ == '__main__':
    with open('loan-approval-test-cases.csv', mode='r') as inputFile:
        reader = csv.reader(inputFile)
        next(reader)  # Skip header
        with open('loan-approval-results.csv', mode='w', newline='') as outputFile:
            writer = csv.writer(outputFile)
            # write header row
            writer.writerow(['Borrower FICO', 'Co-borrower FICO', 'Property Type', 'LTV', 'Loan Amount', 'Loan Type', 'Period', 'Approval Status', 'Loan Category', 'Rate Type'])
            for row in reader:
                if len(row) == 7:  # Ensure the row has the expected number of values
                    borrower_fico, coborrower_fico, property_type, ltv, amount, loan_type, period = row
                    if coborrower_fico == 'None':
                        result = loan_approval_oracle(int(borrower_fico), None, property_type, int(ltv), int(amount), loan_type, int(period))
                    else:
                        result = loan_approval_oracle(int(borrower_fico), int(coborrower_fico), property_type, int(ltv), int(amount), loan_type, int(period))
                    writer.writerow(row + list(result))
                else:
                    print(f"Skipping row with unexpected number of values: {row}")
