'use client'

import '../globals.css';
import { useState } from 'react';
import LoanApproval from './loanApproval';

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
  const [errors, setErrors] = useState({});

  const handleChange = (event) => {
    const { name, value } = event.target;
    setFormData({
      ...formData,
      [name]: value
    });
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    // Basic client-side validation
    let formErrors = {};
    if (!formData.borrowerFirstName) formErrors.borrowerFirstName = "Borrower's first name is required.";
    if (!formData.borrowerLastName) formErrors.borrowerLastName = "Borrower's last name is required.";
    if (!formData.borrowerFico || formData.borrowerFico < 300 || formData.borrowerFico > 850) {
      formErrors.borrowerFico = "Borrower's FICO score must be between 300 and 850.";
    }
    if (formData.coborrowerFico && (formData.coborrowerFico < 300 || formData.coborrowerFico > 850)) {
      formErrors.coborrowerFico = "Co-borrower's FICO score must be between 300 and 850.";
    }
    if (!formData.propertyType) formErrors.propertyType = "Property type is required.";
    if (!formData.purchasePrice) formErrors.purchasePrice = "Purchase price is required.";
    if (!formData.zipCode || !/^\d{5}$/.test(formData.zipCode)) {
      formErrors.zipCode = "Zip code must be a 5-digit number.";
    }
    if (!formData.downPayment) formErrors.downPayment = "Down payment is required.";
    if (!formData.loanType) formErrors.loanType = "Loan type is required.";
    if (!formData.loanAmount || formData.loanAmount < 50000 || formData.loanAmount > 1000000) formErrors.loanAmount = "Loan amount must be between 50000 and 1000000.";
    if (!formData.term) formErrors.term = "Loan term is required.";

    setErrors(formErrors);

    if (Object.keys(formErrors).length > 0) {
      return; // Don't submit the form if there are errors
    }

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
    setErrors({});
  };

  return (
    <form onSubmit={handleSubmit} noValidate>
      <div className="LoanApplication" style={{ fontFamily: 'Segoe UI' }}>
        <div className="border border-black p-4">
          <div className="mb-3">
            <h3 className="fw-semibold">Borrower's Information</h3>
            <div className="d-flex gap-3">
              <input
                name="borrowerFirstName"
                style={{ width: '40%' }}
                className="border border-dark rounded-1 p-1"
                placeholder="First Name"
                maxLength="50"
                value={formData.borrowerFirstName}
                onChange={handleChange}
              />
              <input
                name="borrowerLastName"
                style={{ width: '40%' }}
                className="border border-dark rounded-1 p-2"
                placeholder="Last Name"
                maxLength="50"
                value={formData.borrowerLastName}
                onChange={handleChange}
              />
              <input
                name="borrowerFico"
                style={{ width: '20%' }}
                className="border border-dark rounded-1 p-2"
                type="number"
                placeholder="FICO"
                min="300"
                max="850"
                value={formData.borrowerFico}
                onChange={handleChange}
              />
            </div>
          </div>
          <div className="mb-3">
            <h3 className="fw-semibold">Co-Borrower's Information</h3>
            <div className="d-flex gap-3">
              <input
                name="coborrowerFirstName"
                style={{ width: '40%' }}
                className="border border-dark rounded-1 p-2"
                placeholder="First Name"
                maxLength="50"
                value={formData.coborrowerFirstName}
                onChange={handleChange}
              />
              <input
                name="coborrowerLastName"
                style={{ width: '40%' }}
                className="border border-dark rounded-1 p-2"
                placeholder="Last Name"
                maxLength="50"
                value={formData.coborrowerLastName}
                onChange={handleChange}
              />
              <input
                name="coborrowerFico"
                type="number"
                style={{ width: '20%' }}
                className="border border-dark rounded-1 p-2"
                placeholder="FICO"
                min="300"
                max="850"
                value={formData.coborrowerFico}
                onChange={handleChange}
              />
            </div>
          </div>
        </div>
        <div className="d-flex mb-3">
          <div className="border border-black w-50 p-4">
            <h3 className="fw-semibold">Purchase Information</h3>
            <div className="d-flex gap-3">
              <select name="propertyType" className="border border-dark rounded-1 p-2 w-50" value={formData.propertyType} onChange={handleChange}>
                <option value="" disabled>Select Property Type</option>
                <option value="sfr">Single Family</option>
                <option value="condo">Condominium</option>
                <option value="townhouse">Townhouse</option>
                <option value="multi">Multi-Family Unit</option>
                <option value="commercial">Commercial</option>
              </select>
              <input
                name="purchasePrice"
                className="border border-dark rounded-1 p-2 w-50"
                placeholder="Purchase Price"
                value={formData.purchasePrice}
                onChange={handleChange}
              />
            </div>
            <div className="d-flex gap-3 mt-3">
              <input
                type="number"
                name="zipCode"
                className="border border-dark rounded-1 p-2 w-50"
                placeholder="Zip Code"
                min="10000"
                max="99999"
                value={formData.zipCode}
                onChange={handleChange}
              />
              <input
                name="downPayment"
                className="border border-dark rounded-1 p-2 w-50"
                placeholder="Down Payment"
                value={formData.downPayment}
                onChange={handleChange}
              />
            </div>
          </div>
          <div className="border border-black w-50 p-4">
            <h3 className="fw-semibold">Loan Information</h3>
            <div className="d-flex gap-3">
              <select name="loanType" className="border border-dark rounded-1 p-2 w-50" value={formData.loanType} onChange={handleChange}>
                <option value="" disabled>Select Loan Type</option>
                <option value="fixed">Fixed</option>
                <option value="adjustable">Adjustable</option>
              </select>
              <input
                name="loanAmount"
                type="number"
                className="border border-dark rounded-1 p-2 w-50"
                placeholder="Loan Amount"
                min="50000"
                max="1000000"
                value={formData.loanAmount}
                onChange={handleChange}
              />
            </div>
            <div className="mt-3">
              <select name="term" style={{ width: '48%' }} className="border border-dark rounded-1 p-2" value={formData.term} onChange={handleChange}>
                <option value="" disabled>Select Term</option>
                <option value="10yr">10 years</option>
                <option value="15yr">15 years</option>
                <option value="30yr">30 years</option>
                <option value="40yr">40 years</option>
              </select>
            </div>
          </div>
        </div>
        <div className="d-flex gap-3 mx-3 mb-3">
          <button type="submit" name="submit" className={`w-50 bgMoneyGreen text-white py-1 px-3 rounded-1`}>
            Submit Loan
          </button>
          <button type="button" name="cancel" className={`w-50 bgCancelRed text-white py-1 px-3 rounded-1`} onClick={clearForm}>
            Cancel
          </button>
        </div>
        <div className="container">
          <div className="row">
            <div className="col-sm-9">
              {Object.keys(approvalData).length > 0 ? (
                <LoanApproval data={approvalData} />
              ) : (
                <div className="col-sm-9">
                  <div className="approvalData">
                  </div>
                </div>
              )}
            </div>
            <div className="col-sm-3">
              <div className="row align-items-right m-3">
                <button className={`w-100 bgActionTeal text-white py-2 rounded-1`} disabled>
                  Save Info
                </button>
              </div>
              <div className="row m-3">
                <button className={`w-100 bgActionTeal text-white py-2 rounded-1`} disabled>
                  Load Info
                </button>
              </div>
              <div className="row m-3">
                <button className={`w-100 bgActionTeal text-white py-2 rounded-1`} disabled>
                  Print
                </button>
              </div>
              <div className="row m-3">
                <button className={`w-100 bgActionTeal text-white py-2 rounded-1`} disabled>
                  Help?
                </button>
              </div>
            </div>
          </div>
        </div>
        {Object.keys(errors).length > 0 && (
          <div className="error-summary fw-semibold">
            <p>Please fix the following errors:</p>
            <ul>
              {Object.entries(errors).map(([field, message]) => (
                <li key={field}>{message}</li>
              ))}
            </ul>
          </div>
        )}
      </div>
    </form>
  );
};

export default LoanApplication;