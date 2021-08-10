=begin

PROBLEM
- Input: Integer
- Output: String

rules
    - Explicit rules
      - Write a method that takes a positive integer or zero and
        converts it to string representation

DATA STRUCTURE
- Hash
- String

ALGORITHM
- Create an array of string numbers
- Iterate through input digits
  - Transform every digit to its corresponding string character

- Join collection of newly transformed string digits and return

=end

def integer_to_string(integer)
  string_numbers = ('0'..'9').to_a
  
  integer.digits.reverse.map do |num|
    string_numbers[num]
  end.join
end

p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'