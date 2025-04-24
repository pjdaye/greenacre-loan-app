# Feature: Loan Approval

## Charters for Exploratory Testing

### Charter 1: Decision Logic Boundary Exploration

- **Objective:** Uncover subtle boundary condition issues around FICO scores, LTV, and loan amounts.
- **Method:** Test edge conditions, off-by-one values, and complex combinations.
- **Risks:** Incorrect approval or denial logic

### Charter 2: FHA Program Compliance

- **Objective:** Explore compliance adherence to FHA-specific constraints (property types, loan periods, LTV).
- **Goal:** Identify improper handling or acceptance of invalid FHA configurations.

### Charter 3: Integration with External APIs

- **Objective:** Validate API integration robustness (e.g., credit bureau checks, FHA property data).
- **Goal:** Detect data translation errors, missing or delayed API responses, and error handling.
