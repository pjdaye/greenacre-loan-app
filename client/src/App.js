import './index.css'
import LoanApplication from './loanApplication';
import HousePng from './images/house.png';

function App() {
  return (
    <div className="App max-w-3xl mx-auto p-4 bg-white shadow-md rounded-md">
      <h2 className="text-4xl text-money-green font-bold font-sans mb-4">Greenacre Loan Application</h2>
      <LoanApplication />
      <div className="mt-4">
        <img src={HousePng} alt="House" />
      </div>
    </div>
  );
}

export default App;
