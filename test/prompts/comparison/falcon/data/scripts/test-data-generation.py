import random

def generate_test_data():
    test_data = []

    # Generate a range of valid borrower and co-borrower scores
    for borrower_fico in range(500, 801, 50):                          # Boundary values and significant increments
        for property_type in ["Single Family", "Condo", "Mixed Use"]:   
            loan_amount = [418001, 420000, 422000]                      # Boundary values
            
            for amount in loan_amount:
                test_data.append((borrower_fico, property_type, amount))
    
    return test_data

# added main section for the sake of printing results to screen
if __name__ == "__main__":
    test_data = generate_test_data()
    for data in test_data:
        print(data)
