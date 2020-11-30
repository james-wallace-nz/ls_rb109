def prompt(msg)
  puts "=> #{msg}"
end

def request_amount
  loan_amount = 0
  loop do
    prompt 'Enter a loan amount (positive number)'
    loan_amount = gets.chomp
    break if valid_amount?(loan_amount)
    prompt 'Invalid amount, please try again'
  end
  loan_amount.to_f
end

def valid_amount?(input)
  /^\d*\.?\d*$/.match(input)
end

def request_percentage
  apr = 0
  loop do
    prompt 'Enter annual percentage rate (e.g. 5 for 5%)'
    apr = gets.chomp
    break if valid_percentage?(apr)
    prompt 'Invalid percentage, please try again'
  end
  apr.to_f / 100
end

def valid_percentage?(input)
  /^\d*\.?\d*$/.match(input)
end

def request_duration
  loan_years = 0
  loan_months = 0
  loop do
    prompt 'Enter loan term years (positive whole number)'
    loan_years = gets.chomp
    break if valid_years?(loan_years)
    prompt 'Invalid years, please try again'
  end

  loop do
    prompt 'Enter loan term months (whole number between 0 and 11)'
    loan_months = gets.chomp
    break if valid_months?(loan_months)
    prompt 'Invalid months, please try again'
  end
  [loan_years.to_i, loan_months.to_i]
end

def valid_years?(input)
  /^\d+$/.match(input) && input.to_i >= 0
end

def valid_months?(input)
  /^\d+$/.match(input) && input.to_i >= 0 && input.to_i <= 11
end

def calculate_monthly_payment(amount, rate, term)
  amount * (rate / (1 - (1 + rate)**(-term)))
end

def display_monthly_payment(payment, amount, apr, term_years, term_months)
  prompt "The monthly loan payment for a $#{format_amount(amount)} loan, with " \
          "an annual percentage rate (apr) of #{format_percentage(apr * 100)}, " \
          "for a term of #{term_years} years and #{term_months} month is " \
          "$#{format_amount(payment)}."
end

def format_amount(input)
  left, right = input.to_s.split('.')

  left = left.chars
  new_array = []
  while left.size > 0
    new_array.unshift(left.pop(3).join)
  end

  left = new_array.join(',')
  right = sprintf("%.2f", '.' << right)
  left << right[1..-1]
end

def format_percentage(input)
  sprintf("%.2f%%", input)
end

prompt 'Welcome to loan calculator'

loan_amount = request_amount

apr = request_percentage
monthly_interest_rate = apr / 12

loan_years, loan_months = request_duration
loan_term_months = loan_years * 12 + loan_months

monthly_loan_payment = calculate_monthly_payment loan_amount,
                                                 monthly_interest_rate,
                                                 loan_term_months

display_monthly_payment monthly_loan_payment,
                        loan_amount,
                        apr,
                        loan_years,
                        loan_months

# need to format outputs for display_monthly_payment
