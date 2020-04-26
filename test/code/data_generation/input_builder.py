import csv
import rules_engine_oracle as reo

def read_csv(filename):
    
    with open(filename) as f:
        reader = csv.reader(f)
        next(reader)

        data_table = []
        i = 0
        for row in reader:
            i += 1
            row[0] = row[0].replace('~', '')
            row[1] = row[1].replace('~', '')
            row[2] = row[2].replace('~', '')
            row[3] = row[3].replace('~', '')
            data_table.append(row)
    
    print(i)
    return data_table

def build_output(data_table):

    out_table = []
    i = 0
    for row in data_table:
        i += 1
        bfico = int(row[0])
        cfico = int(row[1])
        prop_type = row[2]
        loan_amt = int(row[3])
        ltv = int(row[4])
        price = int(loan_amt/float(ltv/100))
        down_pmt = price - loan_amt
        loan_type = row[5]
        period = int(row[6])

        test_loan = reo.Loan(borrower_fico = bfico,
                            coborrower_fico = cfico,
                            property_type = prop_type,
                            purchase_price = price,
                            down_payment = down_pmt,
                            loan_amount = loan_amt,
                            loan_type = loan_type,
                            loan_period = period)

        approval, program, rate = reo.mortgage_oracle(test_loan)

        if program is None:
            program = 'none'

        test_case = [bfico, cfico, prop_type, price, down_pmt, loan_amt, loan_type, period, approval, program, rate]
        out_table.append(test_case)
    
    print(i)
    return out_table

def write_csv(data_out, filename):

    header = ['bfico', 'cfico','prop_type', 'price', 'down_pmt', 'loan_amt', 'loan_type', 'period', 'approval', 'program', 'rate']

    with open(filename, 'w', newline='') as f:
        csv_writer = csv.writer(f, quoting = csv.QUOTE_NONNUMERIC)

        csv_writer.writerow(header) # write header row
        
        i = 0
        for row in data_out:
            i += 1
            csv_writer.writerow(row)
    
    print(i)

if __name__ == '__main__':
    filename = 'input_data.csv'
    output_file = 'test_data.csv'
    data = read_csv(filename)
    output = build_output(data)
    write_csv(output, output_file)
