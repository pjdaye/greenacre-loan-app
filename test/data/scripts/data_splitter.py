# data_splitter.py

import csv

if __name__ == "__main__":
    input_file = 'oracle_results.csv'
    output_conventional = 'conventional.csv'
    output_fha = 'fha.csv'
    output_jumbo = 'jumbo.csv'
    output_rejected = 'rejected.csv'

    conventional_loans = []
    fha_loans = []
    jumbo_loans = []
    rejected_loans = []
    with open(input_file, 'r') as f:
        reader = csv.DictReader(f)
        for row in reader:
            program = row['Program']
            if program == 'Conventional':
                conventional_loans.append(row)
            elif program == 'FHA':
                fha_loans.append(row)
            elif program == 'Jumbo':
                jumbo_loans.append(row)
            else:
                rejected_loans.append(row)

    with open(output_conventional, 'a', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=reader.fieldnames)
        writer.writeheader()
        for row in conventional_loans:
            writer.writerow(row)
    
    with open(output_fha, 'a', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=reader.fieldnames)
        writer.writeheader()
        for row in fha_loans:
            writer.writerow(row)

    with open(output_jumbo, 'a', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=reader.fieldnames)
        writer.writeheader()
        for row in jumbo_loans:
            writer.writerow(row)

    with open(output_rejected, 'a', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=reader.fieldnames)
        writer.writeheader()
        for row in rejected_loans:
            writer.writerow(row)
        
    print("Data split successfully.")
