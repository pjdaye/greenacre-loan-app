/**
 * Loan Approval Oracle
 * Determines expected results for loan applications based on acceptance criteria
 */

/**
 * Evaluates a loan application and determines approval status and program
 * @param {Object} application - The loan application data
 * @returns {Object} Expected results including approval status, program, and rate info
 */
export function determineExpectedResults(application) {
  // Extract application parameters
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Validate inputs are within acceptable ranges
  if (!validateInputs(application)) {
    return { status: "Invalid Input", program: "NA", rate: "NA" };
  }
  
  // Check eligibility for each program
  const eligiblePrograms = [];
  
  // Check Jumbo eligibility
  if (isEligibleForJumbo(application)) {
    eligiblePrograms.push("Jumbo");
  }
  
  // Check Conventional eligibility
  if (isEligibleForConventional(application)) {
    eligiblePrograms.push("Conventional");
  }
  
  // Check FHA eligibility
  if (isEligibleForFHA(application)) {
    eligiblePrograms.push("FHA");
  }
  
  // Determine result based on program precedence
  if (eligiblePrograms.length > 0) {
    const program = determineProgram(eligiblePrograms);
    const rate = calculateInterestRate(program, application);
    return { 
      status: "Approval", 
      program: program, 
      rate: rate,
      eligiblePrograms: eligiblePrograms // Include all eligible programs for debugging
    };
  } else {
    return { status: "Denial", program: "NA", rate: "NA" };
  }
}

/**
 * Validates that all inputs are within acceptable ranges
 */
function validateInputs(application) {
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Check borrower FICO
  if (borrowerFICO < 300 || borrowerFICO > 850) {
    return false;
  }
  
  // Check co-borrower FICO if present
  if (coBorrowerFICO !== null && (coBorrowerFICO < 300 || coBorrowerFICO > 850)) {
    return false;
  }
  
  // Check property type
  const validPropertyTypes = ['SFR', 'Condo', 'Townhouse', 'Multi-Family', 'Commercial'];
  if (!validPropertyTypes.includes(propertyType)) {
    return false;
  }
  
  // Check LTV
  if (ltv < 0 || ltv > 100) {
    return false;
  }
  
  // Check loan amount
  if (loanAmount < 50000 || loanAmount > 1000000) {
    return false;
  }
  
  // Check loan type
  const validLoanTypes = ['Fixed', 'Adjustable'];
  if (!validLoanTypes.includes(loanType)) {
    return false;
  }
  
  // Check loan period
  const validLoanPeriods = [10, 15, 30, 40];
  if (!validLoanPeriods.includes(loanPeriod)) {
    return false;
  }
  
  return true;
}

/**
 * Determines if application is eligible for Jumbo loan program
 */
function isEligibleForJumbo(application) {
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Borrower FICO: 660-850
  if (borrowerFICO < 660 || borrowerFICO > 850) {
    return false;
  }
  
  // Co-Borrower FICO: None, or 620-850
  if (coBorrowerFICO !== null && (coBorrowerFICO < 620 || coBorrowerFICO > 850)) {
    return false;
  }
  
  // Property Type: SFR, Condo, Townhouse, Multi-Family
  const validPropertyTypes = ['SFR', 'Condo', 'Townhouse', 'Multi-Family'];
  if (!validPropertyTypes.includes(propertyType)) {
    return false;
  }
  
  // Loan-to-Value (LTV): <= 80%
  if (ltv > 80) {
    return false;
  }
  
  // Loan Amount (USD): 418,000 - 1,000,000
  if (loanAmount < 418000 || loanAmount > 1000000) {
    return false;
  }
  
  // Loan Type: Fixed, Adjustable
  const validLoanTypes = ['Fixed', 'Adjustable'];
  if (!validLoanTypes.includes(loanType)) {
    return false;
  }
  
  // Loan Period: 15, 30, 40 years
  const validLoanPeriods = [15, 30, 40];
  if (!validLoanPeriods.includes(loanPeriod)) {
    return false;
  }
  
  return true;
}

/**
 * Determines if application is eligible for Conventional loan program
 */
function isEligibleForConventional(application) {
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Borrower FICO: 620-850
  if (borrowerFICO < 620 || borrowerFICO > 850) {
    return false;
  }
  
  // Co-Borrower FICO: None, or 520-850
  if (coBorrowerFICO !== null && (coBorrowerFICO < 520 || coBorrowerFICO > 850)) {
    return false;
  }
  
  // Property Type: SFR, Condo, Townhouse, Multi-Family
  const validPropertyTypes = ['SFR', 'Condo', 'Townhouse', 'Multi-Family'];
  if (!validPropertyTypes.includes(propertyType)) {
    return false;
  }
  
  // Loan-to-Value (LTV): <= 80%
  if (ltv > 80) {
    return false;
  }
  
  // Loan Amount (USD): 50,000 - 1,000,000
  if (loanAmount < 50000 || loanAmount > 1000000) {
    return false;
  }
  
  // Loan Type: Fixed, Adjustable
  const validLoanTypes = ['Fixed', 'Adjustable'];
  if (!validLoanTypes.includes(loanType)) {
    return false;
  }
  
  // Loan Period: 10, 15, 30, 40 years
  const validLoanPeriods = [10, 15, 30, 40];
  if (!validLoanPeriods.includes(loanPeriod)) {
    return false;
  }
  
  return true;
}

/**
 * Determines if application is eligible for FHA loan program
 */
function isEligibleForFHA(application) {
  const {
    borrowerFICO,
    coBorrowerFICO,
    propertyType,
    ltv,
    loanAmount,
    loanType,
    loanPeriod
  } = application;
  
  // Borrower FICO: 300-850
  if (borrowerFICO < 300 || borrowerFICO > 850) {
    return false;
  }
  
  // Co-Borrower FICO: None, or 300-850
  if (coBorrowerFICO !== null && (coBorrowerFICO < 300 || coBorrowerFICO > 850)) {
    return false;
  }
  
  // Property Type: SFR, Condo, Townhouse
  const validPropertyTypes = ['SFR', 'Condo', 'Townhouse'];
  if (!validPropertyTypes.includes(propertyType)) {
    return false;
  }
  
  // Loan-to-Value (LTV): <= 100%
  if (ltv > 100) {
    return false;
  }
  
  // Loan Amount (USD): 50,000 - 418,000
  if (loanAmount < 50000 || loanAmount > 418000) {
    return false;
  }
  
  // Loan Type: Fixed
  if (loanType !== 'Fixed') {
    return false;
  }
  
  // Loan Period: 15, 30 years
  const validLoanPeriods = [15, 30];
  if (!validLoanPeriods.includes(loanPeriod)) {
    return false;
  }
  
  return true;
}

/**
 * Determines final program based on precedence rules
 * Precedence order: Jumbo > Conventional > FHA
 */
function determineProgram(eligiblePrograms) {
  if (eligiblePrograms.includes("Jumbo")) {
    return "Jumbo";
  } else if (eligiblePrograms.includes("Conventional")) {
    return "Conventional";
  } else if (eligiblePrograms.includes("FHA")) {
    return "FHA";
  }
  return "NA";
}

/**
 * Calculate interest rate based on program and application details
 * Note: This is a simplified implementation for test purposes
 */
function calculateInterestRate(program, application) {
  const { borrowerFICO, ltv, loanPeriod, loanType } = application;
  
  // Base rates for each program
  const baseRates = {
    Jumbo: 5.25,
    Conventional: 4.75,
    FHA: 4.25
  };
  
  // No calculation for denied applications
  if (program === "NA") {
    return "NA";
  }
  
  let rate = baseRates[program];
  
  // Adjust based on FICO score
  if (borrowerFICO >= 760) {
    rate -= 0.5;
  } else if (borrowerFICO >= 700) {
    rate -= 0.25;
  } else if (borrowerFICO < 620) {
    rate += 0.5;
  }
  
  // Adjust based on LTV
  if (ltv > 90) {
    rate += 0.5;
  } else if (ltv > 80) {
    rate += 0.25;
  }
  
  // Adjust based on loan period
  if (loanPeriod === 15) {
    rate -= 0.25;
  } else if (loanPeriod === 40) {
    rate += 0.25;
  }
  
  // Adjust for loan type
  if (loanType === 'Adjustable') {
    rate -= 0.5;  // Initial rate for ARM is lower
  }
  
  return rate.toFixed(2) + '%';
}

// Example usage
// const sampleApplication = {
//   borrowerFICO: 720,
//   coBorrowerFICO: null,
//   propertyType: 'SFR',
//   ltv: 75,
//   loanAmount: 500000,
//   loanType: 'Fixed',
//   loanPeriod: 30
// };

// const result = determineExpectedResults(sampleApplication);
// console.log("Application:", sampleApplication);
// console.log("Expected Results:", result);

// module.exports = {
//   determineExpectedResults,
//   // ...other exports if needed...
// };
