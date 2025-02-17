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

    if (props.data && props.data.approval) {
        return (
            <div name="approvalPanel" class="container" style={{ "fontFamily": 'Segoe UI' }}>
                <h3 className="fs-1 fw-semibold mb-1">Loan Approval</h3>
                <div class="row my-3">
                    <div class="col-sm-6 fs-4 fw-semibold">Your Loan Is:</div>
                    <div class="col-sm-4 fs-4 text-money-green fw-bold">APPROVED!</div>
                </div>
                <div class="row my-3">
                    <div class="col-sm-6 fs-4 fw-semibold">Your Interest Rate Is:</div>
                    <div class="col-sm-4 fs-4 text-money-green fw-bold">{props.data.rate}%</div>
                </div>
                <div class="row my-3">
                    <div class="col-sm-6 fs-4 fw-semibold">Your Loan Program Is:</div>
                    <div class="col-sm-4 fs-4 text-money-green fw-bold">{loanProgram}</div>
                </div>
            </div>
        )
    } else if (props.data && !props.data.approval) {
        return (
            <div name="approvalPanel" class="container" style={{ "fontFamily": 'Segoe UI' }}>
                <div class="row">
                    <h3 className="fs-1 fw-semibold mb-1">Loan Approval</h3>
                </div>
                <div className="approvalData row">
                    <div className="col-4 fs-4">Your Loan Is:</div>
                    <div className="col-4 fs-4 text-cancel-red fw-bold">DENIED</div>
                </div>
            </div>
        )
    }
};

export default LoanApproval;