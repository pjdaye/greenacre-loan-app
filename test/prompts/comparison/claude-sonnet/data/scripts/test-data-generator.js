/**
 * Greenacre Loan Application Test Data Generator
 * This script generates test data based on equivalence partitioning,
 * boundary value analysis, and pairwise testing techniques.
 */

import { determineExpectedResults } from './loan-approval-oracle.js';

// Define valid ranges and values for each parameter
const validRanges = {
    borrowerFICO: { min: 300, max: 850, step: 1 },
    coBorrowerFICO: { min: 300, max: 850, step: 1, allowNone: true },
    propertyType: ['SFR', 'Condo', 'Townhouse', 'Multi-Family', 'Commercial'],
    ltv: { min: 0, max: 100, step: 0.5 }, // LTV as percentage
    loanAmount: { min: 50000, max: 1000000, step: 1000 }, // USD
    loanType: ['Fixed', 'Adjustable'],
    loanPeriod: [10, 15, 30, 40]
  };
  
  // Define program boundaries for focused testing
  const programBoundaries = {
    jumbo: {
      borrowerFICO: { min: 660, max: 850 },
      coBorrowerFICO: { min: 620, max: 850, allowNone: true },
      propertyType: ['SFR', 'Condo', 'Townhouse', 'Multi-Family'],
      ltv: { max: 80 },
      loanAmount: { min: 418000, max: 1000000 },
      loanType: ['Fixed', 'Adjustable'],
      loanPeriod: [15, 30, 40]
    },
    conventional: {
      borrowerFICO: { min: 620, max: 850 },
      coBorrowerFICO: { min: 520, max: 850, allowNone: true },
      propertyType: ['SFR', 'Condo', 'Townhouse', 'Multi-Family'],
      ltv: { max: 80 },
      loanAmount: { min: 50000, max: 1000000 },
      loanType: ['Fixed', 'Adjustable'],
      loanPeriod: [10, 15, 30, 40]
    },
    fha: {
      borrowerFICO: { min: 300, max: 850 },
      coBorrowerFICO: { min: 300, max: 850, allowNone: true },
      propertyType: ['SFR', 'Condo', 'Townhouse'],
      ltv: { max: 100 },
      loanAmount: { min: 50000, max: 418000 },
      loanType: ['Fixed'],
      loanPeriod: [15, 30]
    }
  };
  
  /**
   * Generate boundary test cases for a specific parameter
   * @param {string} paramName - Name of the parameter
   * @param {object} range - Valid range for the parameter
   * @returns {Array} Array of boundary values
   */
  function generateBoundaryValues(paramName, range) {
    const boundaries = [];
    
    if (typeof range.min === 'number' && typeof range.max === 'number') {
      // Add at-boundary values
      boundaries.push(range.min);
      boundaries.push(range.max);
      
      // Add just-inside-boundary values
      if (range.step) {
        boundaries.push(range.min + range.step);
        boundaries.push(range.max - range.step);
      }
      
      // Add just-outside-boundary values (for validation testing)
      if (range.step) {
        boundaries.push(range.min - range.step);
        boundaries.push(range.max + range.step);
      }
    } else if (Array.isArray(range)) {
      // For enum types, use the values directly
      boundaries.push(...range);
    }
    
    return boundaries;
  }
  
  /**
   * Generate representative values using equivalence partitioning
   * @param {string} paramName - Name of the parameter
   * @param {object} range - Valid range for the parameter
   * @returns {Array} Array of representative values
   */
  function generateEquivalencePartitions(paramName, range) {
    const partitions = [];
    
    if (typeof range.min === 'number' && typeof range.max === 'number') {
      // Add low, middle, and high values within each range
      const low = range.min + range.step;
      const middle = Math.floor((range.min + range.max) / 2);
      const high = range.max - range.step;
      
      partitions.push(low, middle, high);
    } else if (Array.isArray(range)) {
      // For enum types, use the values directly
      partitions.push(...range);
    }
    
    return partitions;
  }
  
  /**
   * Generate program boundary test cases
   * These test cases target the boundaries between loan programs
   */
  function generateProgramBoundaryTests() {
    const testCases = [];
    
    // Jumbo vs Conventional boundary tests (FICO score boundaries)
    testCases.push({
      borrowerFICO: 660, // Exact boundary for Jumbo
      coBorrowerFICO: null,
      propertyType: 'SFR',
      ltv: 75,
      loanAmount: 500000,
      loanType: 'Fixed',
      loanPeriod: 30,
      expectedProgram: 'Jumbo'
    });
    
    testCases.push({
      borrowerFICO: 659, // Just below Jumbo boundary
      coBorrowerFICO: null,
      propertyType: 'SFR',
      ltv: 75,
      loanAmount: 500000,
      loanType: 'Fixed',
      loanPeriod: 30,
      expectedProgram: 'Conventional'
    });
    
    // Conventional vs FHA boundary tests
    testCases.push({
      borrowerFICO: 620, // Exact boundary for Conventional
      coBorrowerFICO: null,
      propertyType: 'SFR',
      ltv: 75,
      loanAmount: 300000,
      loanType: 'Fixed',
      loanPeriod: 30,
      expectedProgram: 'Conventional'
    });
    
    testCases.push({
      borrowerFICO: 619, // Just below Conventional boundary
      coBorrowerFICO: null,
      propertyType: 'SFR',
      ltv: 75,
      loanAmount: 300000,
      loanType: 'Fixed',
      loanPeriod: 30,
      expectedProgram: 'FHA'
    });
    
    // Loan amount boundary tests
    testCases.push({
      borrowerFICO: 700,
      coBorrowerFICO: null,
      propertyType: 'SFR',
      ltv: 75,
      loanAmount: 418000, // Exact boundary for Jumbo
      loanType: 'Fixed',
      loanPeriod: 30,
      expectedProgram: 'Jumbo'
    });
    
    testCases.push({
      borrowerFICO: 700,
      coBorrowerFICO: null,
      propertyType: 'SFR',
      ltv: 75,
      loanAmount: 417999, // Just below Jumbo boundary
      loanType: 'Fixed',
      loanPeriod: 30,
      expectedProgram: 'Conventional'
    });
    
    // LTV boundary tests
    testCases.push({
      borrowerFICO: 700,
      coBorrowerFICO: null,
      propertyType: 'SFR',
      ltv: 80, // Exact boundary for Conventional
      loanAmount: 300000,
      loanType: 'Fixed',
      loanPeriod: 30,
      expectedProgram: 'Conventional'
    });
    
    testCases.push({
      borrowerFICO: 700,
      coBorrowerFICO: null,
      propertyType: 'SFR',
      ltv: 80.5, // Just above Conventional boundary
      loanAmount: 300000,
      loanType: 'Fixed',
      loanPeriod: 30,
      expectedProgram: 'FHA'
    });
    
    return testCases;
  }
  
  /**
   * Generate pairwise test combinations
   * Focus on critical parameter interactions
   */
  function generatePairwiseTests() {
    const testCases = [];
    
    // Focus on co-borrower vs. no co-borrower scenarios
    // With various FICO score combinations
    const ficoValues = [350, 580, 620, 660, 700, 780];
    const coBorrowerOptions = [null, 350, 580, 620, 660, 700, 780];
    
    ficoValues.forEach(fico => {
      coBorrowerOptions.forEach(coFico => {
        // Only generate a manageable subset of combinations
        if ((fico + (coFico || 0)) % 200 === 0) {
          testCases.push({
            borrowerFICO: fico,
            coBorrowerFICO: coFico,
            propertyType: 'SFR',
            ltv: 75,
            loanAmount: 300000,
            loanType: 'Fixed',
            loanPeriod: 30
          });
        }
      });
    });
    
    // Focus on property type vs. loan amount interactions
    const propertyTypes = ['SFR', 'Condo', 'Townhouse', 'Multi-Family', 'Commercial'];
    const loanAmounts = [75000, 300000, 418000, 600000, 900000];
    
    propertyTypes.forEach(propType => {
      loanAmounts.forEach(amount => {
        // Only generate a manageable subset of combinations
        if ((propType.length + amount) % 300000 === 0) {
          testCases.push({
            borrowerFICO: 700,
            coBorrowerFICO: null,
            propertyType: propType,
            ltv: 75,
            loanAmount: amount,
            loanType: 'Fixed',
            loanPeriod: 30
          });
        }
      });
    });
    
    return testCases;
  }
  
  /**
   * Generate the complete test data set
   */
  function generateTestData() {
    const allTestCases = [];
    
    // Add boundary test cases
    allTestCases.push(...generateProgramBoundaryTests());
    
    // Add pairwise test cases
    allTestCases.push(...generatePairwiseTests());
    
    // Add specific edge cases
    allTestCases.push({
      borrowerFICO: 300, // Minimum FICO
      coBorrowerFICO: 850, // Maximum FICO
      propertyType: 'SFR',
      ltv: 100, // Maximum LTV
      loanAmount: 50000, // Minimum amount
      loanType: 'Fixed',
      loanPeriod: 15,
      description: 'Minimum borrower FICO with maximum co-borrower FICO'
    });
    
    allTestCases.push({
      borrowerFICO: 850, // Maximum FICO
      coBorrowerFICO: null,
      propertyType: 'Commercial',
      ltv: 65,
      loanAmount: 1000000, // Maximum amount
      loanType: 'Adjustable',
      loanPeriod: 40,
      description: 'Maximum values for all applicable fields'
    });
    
    // Return the test set with expected results added
    return allTestCases.map(testCase => {
      if (!testCase.expectedProgram) {
        // Calculate expected result if not already provided
        testCase.expectedResults = determineExpectedResults(testCase);
      }
      return testCase;
    });
  }
  
  /**
   * Execute the test data generation
   */
  function main() {
    const testData = generateTestData();
    console.log(`Generated ${testData.length} test cases`);
    console.log(JSON.stringify(testData, null, 2));
    return testData;
  }
  
  // Execute the generator
  const testDataSet = main();
