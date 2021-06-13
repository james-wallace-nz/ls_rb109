=begin

PROBLEM
- Input: integer
- Output: string

rules
    - Explicit rules
      - Write a method that given a number you will return it as a string
        in expanded form

DATA STRUCTURE
- Array

ALGORITHM
- Go thorugh number in reverse
  - Multiply number by 1 and add to an array (or transform?)
  - Multiply next number by 10, then next by 100 etc

=end

def expanded_form(integer)
  reverse_numbers = integer.to_s.reverse.chars
  
  expanded_array = reverse_numbers.map.with_index do |number, index|
    number.to_i * (10 ** index)
  end
  
  expanded_array.delete(0)
  
  expanded_array.reverse.join(' + ')
end


p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
