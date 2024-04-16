import React from 'react';
import HousePng from './images/house.png';

const LoanApplication = () => {
  return (
    <div className="max-w-3xl mx-auto p-4 bg-white shadow-md rounded-md">
      <h2 className="text-4xl text-money-green font-bold font-sans mb-4">Greenacre Loan Application</h2>
      <div className="mb-4">
        <h3 className="text-lg font-semibold">Borrower's Information</h3>
        <div className="flex space-x-4">
          <input
            className="border border-gray-300 rounded-md p-2 w-full"
            placeholder="First Name"
          />
          <input
            className="border border-gray-300 rounded-md p-2 w-full"
            placeholder="Last Name"
          />
          <input
            className="border border-gray-300 rounded-md p-2 w-full"
            placeholder="FICO"
          />
        </div>
      </div>
      <div className="mb-4">
        <h3 className="text-lg font-semibold">Co-Borrower's Information</h3>
        <div className="flex space-x-4">
          <input
            className="border border-gray-300 rounded-md p-2 w-full"
            placeholder="First Name"
          />
          <input
            className="border border-gray-300 rounded-md p-2 w-full"
            placeholder="Last Name"
          />
          <input
            className="border border-gray-300 rounded-md p-2 w-full"
            placeholder="FICO"
          />
        </div>
      </div>
      <div className="flex justify-between mb-4">
        <div>
          <h3 className="text-lg font-semibold">Purchase Information</h3>
          <div className="flex space-x-4">
            <select name="propertyType" className="border border-gray-300 rounded-md p-2">
              <option value="sfr">Single Family</option>
              <option value="condo">Condominium</option>
              <option value="townhouse">Townhouse</option>
              <option value="multi">Multi-Family Unit</option>
              <option value="commercial">Commercial</option>
            </select>
            <input
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="Purchase Price"
            />
          </div>
          <div className="flex space-x-4 mt-2">
            <input
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="Zip Code"
            />
            <input
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="Down Payment"
            />
          </div>
        </div>
        <div>
          <h3 className="text-lg font-semibold">Loan Information</h3>
          <div className="flex space-x-4">
            <select className="border border-gray-300 rounded-md p-2">
              <option value="fixed">Fixed</option>
              <option value="adjustable">Adjustable</option>
            </select>
            <input
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="Loan Amount"
            />
          </div>
          <div className="mt-2">
            <select className="border border-gray-300 rounded-md p-2 w-full">
              <option value="10yr">10 years</option>
              <option value="15yr">15 years</option>
              <option value="30yr">30 years</option>
              <option value="40yr">40 years</option>
            </select>
          </div>
        </div>
      </div>
      <div className="flex justify-between mb-4">
        <button className="w-5/12 bg-money-green text-white py-2 px-4 rounded-md">
          Submit Loan
        </button>
        <button className="w-5/12 bg-cancel-red text-white py-2 px-4 rounded-md">
          Cancel
        </button>
      </div>
      <div className="grid grid-cols-10 bg-gray-200 p-4 rounded-md">
        <div className="col-span-7">
          <h3 className="text-2xl font-semibold mb-2">Loan Approval</h3>
          <div className="grid grid-rows-3">
            <div className="grid grid-cols-5">
              <div className="col-span-2">
                <p className="text-lg font-bold">Your Loan Is:</p>
                <p className="text-lg font-bold">Your Interest Rate Is:</p>
                <p className="text-lg font-bold">Your Loan Program Is:</p>
              </div>
              <div className="col-span-3">
                <p className="text-lg text-money-green font-bold">APPROVED!</p>
                <p className="text-lg text-money-green font-bold">4.125%</p>
                <p className="text-lg text-money-green font-bold">FHA</p>
              </div>
            </div>
          </div>
        </div>
        <div className="col-span-3 grid grid-rows-4">
          <div>
            <button className="w-full bg-action-teal text-white py-2 px-4 rounded-md">
              Save Info
            </button>
          </div>
          <div>
            <button className="w-full bg-action-teal text-white py-2 px-4 rounded-md">
              Load Info
            </button>
          </div>
          <div>
            <button className="w-full bg-action-teal text-white py-2 px-4 rounded-md">
              Print
            </button>
          </div>
          <div>
            <button className="w-full bg-action-teal text-white py-2 px-4 rounded-md">
              Help?
            </button>
          </div>
        </div>
      </div>
      <div className="mt-4">
        <img src={HousePng} alt="House"/>
      </div>
    </div>
  );
};

export default LoanApplication;