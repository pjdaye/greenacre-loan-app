import 'bootstrap/dist/css/bootstrap.min.css';
import styles from "./page.module.css";
import HousePng from "./images/house.png";
import LoanApplication from "./components/loanApplication";

export default function Page() {
  return (
    <div className="App w-50 mx-auto p-3 bg-white shadow rounded">
      <div className={`pt-1 pb-1 ${styles.bgCancelRed}`}>
        <div>
        <p className="align-middle text-center text-white italic">
          This is a demo website for practicing test design principles. Do not enter personal information.
        </p>
        </div>
      </div>
      <h2 className={`pt-4 display-4 ${styles.textMoneyGreen} fw-bold mb-3`}>Greenacre Loan Application</h2>
      <LoanApplication />
      <div className="mt-4  text-center">
        <img src={HousePng.src} alt="House" className="img-fluid" />
      </div>
    </div>
  );
}
