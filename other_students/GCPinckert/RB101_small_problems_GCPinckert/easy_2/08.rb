=begin
- Write a program that asks the user to enter an integer greater than 0
- Then asks if the user wants to determine the sum or product 
- of all numbers between 1 and the entered integer
- i.e. if input is 5, calculates 1+2+3+4+5 or 1*2*3*4*5

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

- Input: integer greater than 0
- Output: integer, either sum of all ints 1-input or product of all ints 1-input

- Get input from user
- While input != an integer > 0:
  - Continue to ask for input from user

- Ask if user wants to determine sum or product (s = sum, p = product)
- While answer != s or p:
  - Continue to query user

- If answer = s:
  - Set sum variable
  - Iterate through all integers between 1 and input
  - For each integer, add current value to sum
  - Return sum
- Display results

- If answer = p:
  - Set product variable
  - Iterate through all integers between 1 and input
  - For each integer, multiply current value to product
  - Return product
- Display results
=end

def prompt(msg)
  puts ">> #{msg}"
end

def get_valid_number
  end_number = ''
  until end_number.to_i.to_s == end_number && end_number.to_i > 0
    prompt "Please enter an integer greater than 0:"
    end_number = gets.chomp
  end
  end_number.to_i
end

def get_calc_type
  which_calc = ''
  until ['s', 'p'].include?(which_calc)
    prompt "Enter 's' to compute the sum, 'p' to compute the product."
    which_calc = gets.chomp
  end
  which_calc
end

def calc_sum(end_number)
  # sum = 0
  # counter = 1
  # while counter <= end_number.to_i
  #   sum += counter
  #   counter += 1
  # end

  # sum

  (1..end_number).inject(:+)
end

def calc_product(end_number)
  # product = 1
  # counter = 1
  # while counter <= end_number.to_i
  #   product *= counter
  #   counter += 1
  # end

  # product

  (1..end_number).inject(:*)
end

end_number = get_valid_number
which_calc = get_calc_type

if which_calc == 's'
  sum = calc_sum(end_number)
  prompt "The sum of the integers between 1 and #{end_number} is #{sum}."
else
  product = calc_product(end_number)
  prompt "The product of the integers between 1 and #{end_number} is #{product}."
end
