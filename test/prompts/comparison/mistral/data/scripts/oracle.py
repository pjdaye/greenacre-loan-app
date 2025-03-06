import sys # Import the sys module
import csv # Import the csv module

def calculate_expected_results(fico, co_fico, property_type, ltv, loan_amount, loan_type, loan_period):
    if 660 <= fico <= 850 and (co_fico is None or 620 <= co_fico <= 850) and property_type in ["Single Family", "Condominium", "Townhouse", "Multi-Family Unit"] and ltv <= 80 and 418000 <= loan_amount <= 1000000 and loan_period in [15, 30, 40]:
        return "Approval", "Jumbo", "Calculate Jumbo Rate"
    elif 620 <= fico <= 850 and (co_fico is None or 520 <= co_fico <= 850) and property_type in ["Single Family", "Condominium", "Townhouse", "Multi-Family Unit"] and ltv <= 80 and 50000 <= loan_amount <= 1000000 and loan_period in [10, 15, 30, 40]:
        return "Approval", "Conventional", "Calculate Conventional Rate"
    elif 300 <= fico <= 850 and (co_fico is None or 300 <= co_fico <= 850) and property_type in ["Single Family", "Condominium", "Townhouse"] and ltv <= 100 and 50000 <= loan_amount <= 418000 and loan_type == "Fixed" and loan_period in [15, 30]:
        return "Approval", "FHA", "Calculate FHA Rate"
    else:
        return "Denial", "NA", "NA"

# Example usage
# expected_result = calculate_expected_results(700, 650, "Single Family", 75, 500000, "Fixed", 30)
# print(expected_result)  # Output: ("Approval", "Jumbo", "Calculate Jumbo Rate")

if __name__ == "__main__":
    # open and read test-data.csv
    with open("test-data.csv", "r") as file:
        reader = csv.reader(file)
        next(reader)  # Skip the header row
        for i, row in enumerate(reader, start=1):
            testCaseId, borrowerFico, ltv, loanAmount, loanPeriod, propertyType, loanType = map(str, row)
            expected_result = calculate_expected_results(int(borrowerFico), None, propertyType, int(ltv), int(loanAmount), loanType, int(loanPeriod[:2]))
            print(f"Test Case {i}: {expected_result}")
