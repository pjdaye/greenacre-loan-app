import './index.css'
import LoanApplication from './loanApplication';
import HousePng from './images/house.png';

function App() {
  return (
    <div className="App max-w-3xl mx-auto p-4 bg-white shadow-md rounded-md">
      <div className="pt-2 pr-5 pb-2 pl-6 bg-cancel-red">
        <div className="">
          <p className="align-middle text-center text-white italic">
            This is a demo website for practicing test design principles. Do not enter personal information.
          </p>
        </div>
      </div>
      <h2 className="pt-5 text-4xl text-money-green font-bold font-sans mb-4">Greenacre Loan Application</h2>
      <LoanApplication />
      <div className="mt-4">
        <img src={HousePng} alt="House" />
      </div>
    </div>
  );
}

export default App;
