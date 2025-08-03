import '../globals.css';

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
            <div name="approvalPanel" className="container" style={{ "fontFamily": 'Segoe UI' }}>
                <h3 className="fs-1 fw-semibold mb-1">Loan Approval</h3>
                <div className="row my-3">
                    <div className="col-sm-6 fs-4 fw-semibold">Your Loan Is:</div>
                    <div className={`col-sm-4 fs-4 textMoneyGreen fw-bold`}>APPROVED!</div>
                </div>
                <div className="row my-3">
                    <div className="col-sm-6 fs-4 fw-semibold">Your Interest Rate Is:</div>
                    <div className={`col-sm-4 fs-4 textMoneyGreen fw-bold`}>{props.data.rate}%</div>
                </div>
                <div className="row my-3">
                    <div className="col-sm-6 fs-4 fw-semibold">Your Loan Program Is:</div>
                    <div className={`col-sm-4 fs-4 textMoneyGreen fw-bold`}>{loanProgram}</div>
                </div>
            </div>
        )
    } else if (props.data && !props.data.approval) {
        return (
            <div id="approvalPanel" className="container" style={{ "fontFamily": 'Segoe UI' }}>
                <div className="row">
                    <h3 className="fs-1 fw-semibold mb-1">Loan Approval</h3>
                </div>
                <div className="approvalData row">
                    <div className="col-4 fs-4">Your Loan Is:</div>
                    <div className={`col-4 fs-4 textCancelRed fw-bold`}>DENIED</div>
                </div>
            </div>
        )
    }
};

export default LoanApproval;