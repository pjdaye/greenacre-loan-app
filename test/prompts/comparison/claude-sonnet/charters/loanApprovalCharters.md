# Feature: Loan Approval

## Charters for Exploratory Testing

### Charter 1: Investigate Edge Case Co-Borrower Scenarios

**Objective:** Explore how the system handles applications with various co-borrower configurations, particularly near program eligibility boundaries.

**Areas of Focus:**

- Applications where borrower FICO is below program minimums but co-borrower FICO is strong
- Applications where borrower meets minimums but co-borrower does not
- Edge cases where either borrower or co-borrower FICO is exactly at program boundaries
- Applications where the co-borrower information is changed/removed after initial submission

**Testing Approach:**

1. Start with a baseline application that qualifies for a specific program
2. Systematically modify borrower and co-borrower FICO scores while keeping other parameters constant
3. Test various combinations across program boundaries
4. Observe system behavior, particularly for applications that should change program eligibility based solely on co-borrower information

**Time Box:** 90 minutes

### Charter 2: Investigate Concurrent Application Processing and State Management

**Objective:** Explore how the system handles multiple users working on the same loan application simultaneously, and identify potential data consistency issues.

**Areas of Focus:**
