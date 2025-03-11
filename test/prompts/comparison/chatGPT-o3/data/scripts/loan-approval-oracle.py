import csv

def determine_loan_program(borrower_fico, co_borrower_fico, property_type, ltv, loan_amount, loan_type, loan_period):
    # Check if the property type is valid for any loan program
    if property_type not in ["Single Family", "Condominium", "Townhouse", "Multi-Family"]:
        return ("Denial", "NA", "NA")

    # Define program eligibility functions
    def is_jumbo():
        return (660 <= borrower_fico <= 850 and 
                (co_borrower_fico is None or 620 <= co_borrower_fico <= 850) and 
                property_type in ["Single Family", "Condominium", "Townhouse", "Multi-Family"] and 
                ltv <= 80 and 
                418000 <= loan_amount <= 1000000 and 
                loan_type in ["Fixed", "Adjustable"] and 
                loan_period in [15, 30, 40])
    
    def is_conventional():
        return (620 <= borrower_fico <= 850 and 
                (co_borrower_fico is None or 520 <= co_borrower_fico <= 850) and 
                property_type in ["Single Family", "Condominium", "Townhouse", "Multi-Family"] and 
                ltv <= 80 and 
                50000 <= loan_amount <= 1000000 and 
                loan_type in ["Fixed", "Adjustable"] and 
                loan_period in [10, 15, 30, 40])
                
    def is_fha():
        return (300 <= borrower_fico <= 850 and 
                (co_borrower_fico is None or 300 <= co_borrower_fico <= 850) and 
                property_type in ["Single Family", "Condominium", "Townhouse"] and 
                ltv <= 100 and 
                50000 <= loan_amount <= 418000 and 
                loan_type == "Fixed" and 
                loan_period in [15, 30])
    
    # Determine approved program based on precedence: Jumbo > Conventional > FHA
    if is_jumbo():
        return ("Approval", "Jumbo", "Calculated_Rate")
    elif is_conventional():
        return ("Approval", "Conventional", "Calculated_Rate")
    elif is_fha():
        return ("Approval", "FHA", "Calculated_Rate")
    else:
        return ("Denial", "NA", "NA")

# Example usage:
# result = determine_loan_program(borrower_fico=700, co_borrower_fico=650, property_type="Townhouse",
#                                 ltv=75, loan_amount=500000, loan_type="Adjustable", loan_period=40)
# print(result)

if __name__ == "__main__":
    # read csv file and run through determine_loan_program
    with open('test-data-2.csv', mode='r') as file:
        reader = csv.reader(file)
        next(reader) # skip the header row
        for i, row in enumerate(reader, start=1):
            borrower_fico, co_borrower_fico, property_type, ltv, loan_amount, loan_type, loan_period = map(str, row)
            if (co_borrower_fico == "None"):
                result = determine_loan_program(int(borrower_fico), None, property_type, int(ltv), int(loan_amount), loan_type, int(loan_period))
            else:
                result = determine_loan_program(int(borrower_fico), int(co_borrower_fico), property_type, int(ltv), int(loan_amount), loan_type, int(loan_period))
            print(f"Test Case {i}: {result}")
