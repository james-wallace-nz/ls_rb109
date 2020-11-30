# Problem

Enter:
- Loan Amount
- Annual Percentage Rate (APR)
- Loan Duration

Output Monthly Loan Repayment

Will need to calculate intermediary:
- Monthly interest rate
- Loan duration in months

To calculate final output:
- Monthly loan payment

M = Loan Amount * ( Monthly Interest Rate / (1 - (1 + Monthly Interest Rate )**(-Loan Duration Months)))


# Examples

loan_amount = 100,000
term_years = 5
term_months = 6
interest rate = 6%
monthly payment = $1,782.63

# Data Structures

Variables only


# Algorithm

Get, validate, and set loan amount ($)
Get, validate, and set APR (as %)
Get, validate, and set loan duration (years and months)
    request years input
    validate input:
        check if whole number, otherwise ask if it is correct split into months and years
        if years is whole number then ask for months
    return array of years, months

Calculate monthly interest rate
Calculate loan duration in months (add years * 12 and months)

Calculate monthly loan payment


# Code