import './index.css'
import LoanApplication from './loanApplication';
import HousePng from './images/house.png';

function App() {
  return (
    <div className="App w-50 mx-auto p-3 bg-white shadow rounded">
      <div className="pt-1 pb-1 bg-cancel-red">
        <div>
        <p className="align-middle text-center text-white italic">
          This is a demo website for practicing test design principles. Do not enter personal information.
        </p>
        </div>
      </div>
      <h2 className="pt-4 display-4 text-money-green fw-bold mb-3">Greenacre Loan Application</h2>
      <LoanApplication />
      <div className="mt-4  text-center">
        <img src={HousePng} alt="House" className="img-fluid" />
      </div>
    </div>
  );
}

export default App;
