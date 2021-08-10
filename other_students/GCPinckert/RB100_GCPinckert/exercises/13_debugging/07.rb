# The output of the given code tells you you have $70
# The expected output is $238
# What went wrong?

# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

=begin   
The problem here is on line 36, in the block being passed to the each
method. In the block, the value being returned by the calculate_balance
method is being reassigned to the variable balance on each iteration
through the array. Therefore, the program outputs 70 because that is the
end balance of the month of march, and does not reflect a cumulative 
balance over the three month period. 

Fix this by adding each returned value from calculate_balance to the
balance variable rather than reassigning it (+= instead of =). 
=end