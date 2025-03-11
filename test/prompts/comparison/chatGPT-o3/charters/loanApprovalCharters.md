# Feature: Loan Approval

## Charters for Exploratory Testing

### Charter 1: Input Field & Boundary Exploration

- **Objective:** Manually test the form by entering extreme values, invalid formats, and special characters.
- **Focus Areas:**  
  - Boundary conditions for FICO scores and Loan Amount.
  - Non-numeric input in numeric fields.
  - Incorrect formatting for percentage inputs (LTV).
- **Approach:**  
  - Use manual data entry and observe error handling and messaging.

---

### Charter 2: API & Data Transformation Investigation

- **Objective:** Validate the integrity of data flow between the front end and the back end.
- **Focus Areas:**  
  - Data serialization/deserialization.
  - API responses for invalid input.
  - Consistency of error messaging.
- **Approach:**  
  - Use developer tools to inspect network requests and logs.
  - Cross-check UI inputs with back-end validations.

---

### Charter 3: Distributed Environment and Concurrency Analysis

- **Objective:** Explore system behavior under load and container failure scenarios.
- **Focus Areas:**  
  - Concurrency of loan application submissions.
  - System recovery when a Docker container fails.
- **Approach:**  
  - Simulate concurrent submissions using load tools.
  - Manually trigger container failures and observe recovery and data consistency.
