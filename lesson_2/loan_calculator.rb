=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs:
  > Loan amount (p for principal)
  > APR (Annual Percentage Rate)
  > Loan term (y)

-  Output:
  > Monthly interest rate (j)
  > Loan duration in months (n)
  > Monthly payments (m)

---

**Problem Domain:**
  > Basic compound interest calculations for determining an amortization schedule

---

**Implicit Requirements:**
  > Accepting input for annual interest in percent,
    but converting to decimal notation for calculations.
  > It is implied that we should round dollar amounts to the nearest cent

---

**Clarifying Questions:**

1. Presumably when the specifications say "loan duration"
   that input is denominated in years?
2.
3.

---

**Mental Model:**
  > Ask for the principal loan amount, the APR, and the loan duration.
  > Perform conversion of APR to monthly interest,
    and duration in years to duration in months.
  > Use the given algorithm to compute monthly payments from Principal,
    monthly interest, and monthly duration.
  > Display the results

---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs:
    > P = $100,000
    > APR = 6%
    > Term = 10 years
  -  Output:
    > Monthly payments = $1,110.21

-  Example 2
  -  Inputs:
    > P = $25,000
    > APR = 5%
    > Term = 1.5 years
  -  Output:
    > Monthly payments = $1,444.51

---

_Your Edge Cases:_

-  Example 4
  -  Inputs:
    > P = $100,000
    > APR = 0%
    > Term = 5 years
  -  Output:
    > Monthly payments = $1,666.67

---

Data Structure
--------------
> Everything will be stored as scalars (floats and strings)

---

Algorithm
---------
  > Get Principal amount from user and verify validity
  > Get APR from user and verify validity
  > Get Term from user and verify validity

  > Convert APR to monthly interest in decimal form
    j = APR / 1200
  > Convert Term from years to months
    n = y * 12
  > Deal with edge cases of apr or term being 0

  > Use n, j, and p to compute monthly payments
    m = p * (j / (1 - (1 + j)**(-n)))

  > Display the Results

Code
----

=end

def get_float
  loop do
    float = gets.chomp.gsub(/[,_$%]/, '') # remove magnitude 3 delimiters, '$' and '%'
    float = Float(float, exception: false)
    # returns false if error thrown !does not distinguish between error types!
    break float if float && float >= 0.0
    puts "=> Please enter a valid non-negative number:"
  end
end

def format_number(num)
  whole, decimal = num.to_s.split('.')
  i = -4 # index at which to start adding commas
  # whole ||= '0'
  while -i <= whole.length
    whole.insert(i, ',')
    i -= 4
  end
  # decimal ||= '0'
  decimal << '0' while decimal.length < 2
  "#{whole}.#{decimal}"
end

puts "=> Welcome to the Loan Calculator."
puts "=> Please enter the amount of the loan (principal):"
principal = get_float

puts "=> Please enter the APR (as a percentage):"
apr = get_float

puts "=> Please enter the term of the loan (expressed in years):"
term = get_float

months = (term * 12).round(0).to_i
monthly_interest = apr / 1200

if months == 0   # edge case, not a loan
  payment = principal
  months = 1        # for output purposes
elsif apr < 1.0e-9  # floating point precision starting to "matter"
  payment = principal / months  # treat apr as '0.0' requiring a simpler formula
else
  payment = principal * (monthly_interest / (1 - ((1 + monthly_interest)**-months)))
end
principal = format_number(principal.round(2))
payment = format_number(payment.round(2))
puts "=> Computing amortization schedule for a loan of $#{principal}"
puts "=> with an APR of #{apr}% and a term of #{term} years...\n\n"

puts "=> This loan will require #{months} monthly payments of $#{payment}"
