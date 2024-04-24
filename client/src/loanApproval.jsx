import React from 'react';

const LoanApproval = (props) => {
    
    let loanProgram;

    switch (props.data.program) {
        case 'jumbo':
            loanProgram = 'Jumbo';
            break;
        case 'conventional':
            loanProgram = 'Conventional';
            break;
        case 'fha':
            loanProgram = 'FHA';
            break;
        default:
            loanProgram = '';
    }
    
    if (props.data.approval) {
        return (
            <div className="col-span-7">
                <h3 className="text-2xl font-semibold mb-2">Loan Approval</h3>
                <div className="approvalData grid grid-rows-3">
                    <div className="grid grid-cols-5">
                        <div className="col-span-2">
                            <p className="text-lg font-bold">Your Loan Is:</p>
                            <p className="text-lg font-bold">Your Interest Rate Is:</p>
                            <p className="text-lg font-bold">Your Loan Program Is:</p>
                        </div>
                        <div className="col-span-3">
                            <p className="text-lg text-money-green font-bold">APPROVED!</p>
                            <p className="text-lg text-money-green font-bold">{props.data.rate}%</p>
                            <p className="text-lg text-money-green font-bold">{loanProgram}</p>
                        </div>
                    </div>
                </div>
            </div>
        )
    } else if (!props.data.approval) {
        return (
            <div className="col-span-7">
                <h3 className="text-2xl font-semibold mb-2">Loan Approval</h3>
                <div className="approvalData grid grid-rows-3">
                    <div className="grid grid-cols-5">
                        <div className="col-span-2">
                            <p className="text-lg font-bold">Your Loan Is:</p>
                            <p className="text-lg font-bold">Your Interest Rate Is:</p>
                            <p className="text-lg font-bold">Your Loan Program Is:</p>
                        </div>
                        <div className="col-span-3">
                            <p className="text-lg text-cancel-red font-bold">DENIED</p>
                            <p className="text-lg text-cancel-red font-bold">N/A</p>
                            <p className="text-lg text-cancel-red font-bold">No matching programs</p>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
};

export default LoanApproval;