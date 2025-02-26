def oracle(borrower1_score, borrower2_score, loan_amount, property_type):
    # Simplified logic to emulate expected results based on input parameters
    if 300 <= borrower1_score < 600:      # Low credit scores
        return "Denial", "NA", "NA"
    elif 600 <= borrower1_score < 860:    # Middle to high credit scores
        scores = [borrower1_score, borrower2_score]
        if max(scores) >= 700 and "Jumbo" in property_type or loan_amount > 418000:
            return "Approval", "Jumbo", "Rate"
        else:
            return "Approval", "Conventional", "Rate"
    else:
        return "Denial", "NA", "NA"
