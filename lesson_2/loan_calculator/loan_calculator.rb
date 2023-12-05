def prompt(message)
  puts "=> #{message}"
end

def get_valid_float
  loop do
    float = gets.chomp.gsub(/[,_$%]/, '') # remove magnitude 3 delimiters, '$' and '%'
    float = Float(float, exception: false) # does not distinguish between error types!
    break float if float && float >= 0.0
    prompt "Please enter a valid non-negative number:"
  end
end

def compute_payments(principal, apr, years)
  months = (years * 12).round(0).to_i
  monthly_interest = apr / 1200

  if months == 0 # edge case, not a loan
    payment = principal
    months = 1 # for output purposes
  elsif apr < 1.0e-9 # floating point precision starting to "matter"
    payment = principal / months # treat apr as '0' requiring a simpler formula
  else
    payment = principal * (monthly_interest / (1 - ((1 + monthly_interest)**-months)))
  end
  [months, payment]
end

def format_number(num)
  whole, decimal = format('%.2f', num).split('.')
  index = -4
  while -index <= whole.length
    whole.insert(index, ',')
    index -= 4
  end
  "#{whole}.#{decimal}"
end

prompt "Welcome to the Loan Calculator."
prompt "Please enter the amount of the loan (principal):"
principal = get_valid_float

prompt "Please enter the APR (as a percentage):"
apr = get_valid_float

prompt "Please enter the term of the loan (expressed in years):"
years = get_valid_float

months, payment = compute_payments(principal, apr, years)

principal = format_number(principal.round(2))
payment = format_number(payment.round(2))
years = years.to_s.chomp('0').chomp('.')

prompt "Computing amortization schedule for a loan of $#{principal}"
prompt "with an APR of #{apr}% and a term of #{years} years...\n\n"
prompt "This loan will require #{months} monthly payments of $#{payment}"
