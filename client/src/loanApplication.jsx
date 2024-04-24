import React, { useState } from 'react';
import LoanApproval from './loanApproval';

// const baseUrl = process.env.REACT_APP_API_URL;

const LoanApplication = () => {
  const [formData, setFormData] = useState({
    borrowerFirstName: '',
    borrowerLastName: '',
    borrowerFico: '',
    coborrowerFirstName: '',
    coborrowerLastName: '',
    coborrowerFico: '',
    propertyType: 'sfr',
    purchasePrice: '',
    zipCode: '',
    downPayment: '',
    loanType: 'fixed',
    loanAmount: '',
    term: '10yr',
  });

  const [approvalData, setApprovalData] = useState([]);

  const handleChange = (event) => {
    const { name, value } = event.target;
    setFormData({
      ...formData,
      [name]: value
    });
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    const jsonFormData = JSON.stringify(formData);

    fetch('/apply', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonFormData
    })
      .then(response => response.json())
      .then(data => {
        setApprovalData(data);
      })
      .catch(error => console.log('Error:', error)
      );
  };

  const clearForm = async (event) => {
    setFormData({
      borrowerFirstName: '',
      borrowerLastName: '',
      borrowerFico: '',
      coborrowerFirstName: '',
      coborrowerLastName: '',
      coborrowerFico: '',
      propertyType: 'sfr',
      purchasePrice: '',
      zipCode: '',
      downPayment: '',
      loanType: 'fixed',
      loanAmount: '',
      term: '10yr'
    });
    setApprovalData({
    });
  };

  return (
    <form onSubmit={handleSubmit}>
      <div className="LoanApplication">
        <div className="mb-4">
          <h3 className="text-lg font-semibold">Borrower's Information</h3>
          <div className="flex space-x-4">
            <input
              name="borrowerFirstName"
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="First Name"
              maxLength="50"
              value={formData.borrowerFirstName}
              onChange={handleChange}
            />
            <input
              name="borrowerLastName"
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="Last Name"
              maxLength="50"
              value={formData.borrowerLastName}
              onChange={handleChange}
            />
            <input
              name="borrowerFico"
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="FICO"
              min="300"
              max="850"
              value={formData.borrowerFico}
              onChange={handleChange}
            />
          </div>
        </div>
        <div className="mb-4">
          <h3 className="text-lg font-semibold">Co-Borrower's Information</h3>
          <div className="flex space-x-4">
            <input
              name="coborrowerFirstName"
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="First Name"
              maxLength="50"
              value={formData.coborrowerFirstName}
              onChange={handleChange}
            />
            <input
              name="coborrowerLastName"
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="Last Name"
              maxLength="50"
              value={formData.coborrowerLastName}
              onChange={handleChange}
            />
            <input
              name="coborrowerFico"
              className="border border-gray-300 rounded-md p-2 w-full"
              placeholder="FICO"
              min="300"
              max="850"
              value={formData.coborrowerFico}
              onChange={handleChange}
            />
          </div>
        </div>
        <div className="flex justify-between mb-4 space-x-4">
          <div>
            <h3 className="text-lg font-semibold">Purchase Information</h3>
            <div className="flex space-x-4">
              <select name="propertyType" className="border border-gray-300 rounded-md p-2" value={formData.propertyType} onChange={handleChange}>
                <option value="sfr">Single Family</option>
                <option value="condo">Condominium</option>
                <option value="townhouse">Townhouse</option>
                <option value="multi">Multi-Family Unit</option>
                <option value="commercial">Commercial</option>
              </select>
              <input
                name="purchasePrice"
                className="border border-gray-300 rounded-md p-2 w-full"
                placeholder="Purchase Price"
                value={formData.purchasePrice}
                onChange={handleChange}
              />
            </div>
            <div className="flex space-x-4 mt-2">
              <input
                name="zipCode"
                className="border border-gray-300 rounded-md p-2 w-full"
                placeholder="Zip Code"
                minLength="5"
                maxLength="10"
                value={formData.zipCode}
                onChange={handleChange}
              />
              <input
                name="downPayment"
                className="border border-gray-300 rounded-md p-2 w-full"
                placeholder="Down Payment"
                value={formData.downPayment}
                onChange={handleChange}
              />
            </div>
          </div>
          <div>
            <h3 className="text-lg font-semibold">Loan Information</h3>
            <div className="flex space-x-4">
              <select name="loanType" className="border border-gray-300 rounded-md p-2" value={formData.loanType} onChange={handleChange}>
                <option value="fixed">Fixed</option>
                <option value="adjustable">Adjustable</option>
              </select>
              <input
                name="loanAmount"
                className="border border-gray-300 rounded-md p-2 w-full"
                placeholder="Loan Amount"
                min="50000"
                max="1000000"
                value={formData.loanAmount}
                onChange={handleChange}
              />
            </div>
            <div className="mt-2">
              <select name="term" className="border border-gray-300 rounded-md p-2 w-full" value={formData.term} onChange={handleChange}>
                <option value="10yr">10 years</option>
                <option value="15yr">15 years</option>
                <option value="30yr">30 years</option>
                <option value="40yr">40 years</option>
              </select>
            </div>
          </div>
        </div>
        <div className="flex justify-between mb-4">
          <button type="submit" name="submit" className="w-5/12 bg-money-green text-white py-2 px-4 rounded-md">
            Submit Loan
          </button>
          <button type="button" name="cancel" className="w-5/12 bg-cancel-red text-white py-2 px-4 rounded-md" onClick={clearForm}>
            Cancel
          </button>
        </div>
        <div className="grid grid-cols-10 p-4 rounded-md">
          {Object.keys(approvalData).length > 0 ? (
            <LoanApproval data={approvalData} />
          ) : (
            <div className="col-span-7">
              <div className="approvalData grid grid-rows-3 h-72">
              </div>
            </div>
          )}
          <div className="col-span-3 grid grid-rows-4">
            <div>
              <button className="w-full bg-action-teal text-white py-2 rounded-md" disabled>
                Save Info
              </button>
            </div>
            <div>
              <button className="w-full bg-action-teal text-white py-2 rounded-md" disabled>
                Load Info
              </button>
            </div>
            <div>
              <button className="w-full bg-action-teal text-white py-2 rounded-md" disabled>
                Print
              </button>
            </div>
            <div>
              <button className="w-full bg-action-teal text-white py-2 rounded-md" disabled>
                Help?
              </button>
            </div>
          </div>
        </div>
      </div>
    </form>
  );
};

export default LoanApplication;