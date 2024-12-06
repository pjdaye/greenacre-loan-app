# loan_application_oracle.py

def determine_loan_program(borrower_fico, co_borrower_fico, property_type, loan_amount, ltv, loan_type, loan_period):
    # Define loan programs with their rulesets
    loan_programs = {
        "Jumbo": {
            "Borrower_FICO": (660, 850),
            "Co_Borrower_FICO": (620, 850),
            "Property_Type": ["SFR", "Condo", "Townhouse", "Multi-Family"],
            "LTV": (0, 80),
            "Loan_Amount": (418000, 1000000),
            "Loan_Type": ["Fixed", "Adjustable"],
            "Loan_Period": [15, 30, 40]
        },
        "Conventional": {
            "Borrower_FICO": (620, 850),
            "Co_Borrower_FICO": (520, 850),
            "Property_Type": ["SFR", "Condo", "Townhouse", "Multi-Family"],
            "LTV": (0, 80),
            "Loan_Amount": (50000, 1000000),
            "Loan_Type": ["Fixed", "Adjustable"],
            "Loan_Period": [10, 15, 30, 40]
        },
        "FHA": {
            "Borrower_FICO": (300, 850),
            "Co_Borrower_FICO": (300, 850),
            "Property_Type": ["SFR", "Condo", "Townhouse"],
            "LTV": (0, 100),
            "Loan_Amount": (50000, 418000),
            "Loan_Type": ["Fixed"],
            "Loan_Period": [15, 30]
        }
    }
    
    eligible_programs = []
    
    for program, rules in loan_programs.items():
        # Check Borrower FICO
        if not (rules["Borrower_FICO"][0] <= borrower_fico <= rules["Borrower_FICO"][1]):
            continue
        # Check Co-Borrower FICO
        if co_borrower_fico != "None":
            if not (rules["Co_Borrower_FICO"][0] <= co_borrower_fico <= rules["Co_Borrower_FICO"][1]):
                continue
        # Check Property Type
        if property_type not in rules["Property_Type"]:
            continue
        # Check LTV
        if not (rules["LTV"][0] <= ltv <= rules["LTV"][1]):
            continue
        # Check Loan Amount
        if not (rules["Loan_Amount"][0] <= loan_amount <= rules["Loan_Amount"][1]):
            continue
        # Check Loan Type
        if loan_type not in rules["Loan_Type"]:
            continue
        # Check Loan Period
        if loan_period not in rules["Loan_Period"]:
            continue
        # If all conditions met
        eligible_programs.append(program)
    
    # Determine approval based on precedence
    if not eligible_programs:
        return {
            "Approval": False,
            "Program": "NA",
            "Rate": "NA"
        }
    else:
        # Apply precedence: Jumbo > Conventional > FHA
        if "Jumbo" in eligible_programs:
            selected_program = "Jumbo"
        elif "Conventional" in eligible_programs:
            selected_program = "Conventional"
        else:
            selected_program = "FHA"
        
        return {
            "Approval": True,
            "Program": selected_program,
            "Rate": calculate_rate(borrower_fico, co_borrower_fico, loan_type, selected_program)
        }
 
def calculate_rate(borrower_fico, co_borrower_fico, loan_type, selected_program):
    base_rate = 7.000
    step = 0.125

    if loan_type == 'Adjustable':
        base_rate -= 1.5
    
    if selected_program == 'FHA':
        base_rate += step
    elif selected_program == 'Conventional':
        base_rate -= step
    elif selected_program == 'Jumbo':
        base_rate -= (2 * step)
    
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
    co_borrower_pts = 0
    if co_borrower_fico != "None":
        if 520 <= co_borrower_fico < 620:
            co_borrower_pts = 1
        elif 420 <= co_borrower_fico < 520:
            co_borrower_pts = 2
        elif 320 <= co_borrower_fico < 420:
            co_borrower_pts = 3
        elif co_borrower_fico < 320:
            co_borrower_pts = 4
    
    return base_rate + (borrower_pts * step) + (co_borrower_pts * step)

# Example usage:
if __name__ == "__main__":
    import csv
    
    input_file = 'pairwise_test_data.csv'
    output_file = 'oracle_results.csv'
    
    with open(input_file, 'r') as csv_in, open(output_file, 'w', newline='') as csv_out:
        reader = csv.DictReader(csv_in)
        fieldnames = reader.fieldnames + ['Approval', 'Program', 'Rate']
        writer = csv.DictWriter(csv_out, fieldnames=fieldnames)
        writer.writeheader()
        
        for row in reader:
            borrower_fico = int(row['Borrower_FICO'])
            co_borrower_fico = row['Co_Borrower_FICO']
            co_borrower_fico = int(co_borrower_fico) if co_borrower_fico != "None" else "None"
            property_type = row['Property_Type']
            loan_amount = int(row['Loan_Amount'])
            ltv = int(row['LTV'])
            loan_type = row['Loan_Type']
            loan_period = int(row['Loan_Period'])
            
            result = determine_loan_program(
                borrower_fico,
                co_borrower_fico,
                property_type,
                loan_amount,
                ltv,
                loan_type,
                loan_period
            )
            
            row['Approval'] = result['Approval']
            row['Program'] = result['Program']
            row['Rate'] = result['Rate']
            writer.writerow(row)
    
    print(f"Oracle results written to {output_file}")
