=begin

PROBLEM
- Input: Integer
- Output: Integer

rules
    - Explicit rules
      - Write a method that given an integer, finds the maximal number
        you can obtain by deleting exactly one digit of the given number

DATA STRUCTURE
- Array
- Integer

ALGORITHM
- Iterate thorugh digits and index numbers
  - Add every number except the current index number to a collection
  - Compare numbers in the collection and check which one is the highest
=end

def delete_digit(integer)
  digits = integer.digits.reverse
  collection = []
  
  digits.each_with_index do |_, index|
    collection << (digits[0...index] + digits[index + 1..-1]).join
  end
  
  collection.map(&:to_i).max
end

p delete_digit(152) #== 52
p delete_digit(1001) #== 101
p delete_digit(10) #== 1
