=begin
Find all pairs

You are given array of integers, your task will be to count all pairs in that array 
and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: 
for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

PROBLEM
- Input: Array of integers
- Output: Integer

rules:
    - Explicit rules
      - Write a method, that counts all pairs of numbers and returns their count
      - Return 0 if array is empty or has only one value

DATA STRUCTURE
- Hash
- Integer

ALGORITHM
- Obtain a count of every number within array and add it to a collection
- Obtain all values from that collection and iterate through it
  - If the value is < 2
    - return 0 
  - If the value is even
    - return same value
  - If the value is odd
    - return value - 1

PSEUDOCODE
- Accept an array (array)
- Initialize an empty hash (letter_counter)

- Iterate through array
  - Increase count in letter counter by 1 

- Initialize new array (final_values) and assign to:
  - Obtain values from hash and map through it
    - If the value is < 2
      - return 0
    - If the value is odd
      - return value - 1
    - If the value is even
      return value

- Add up all values within final_values array
=end

def pairs(array)
  return 0 if array.empty?
  
  letter_counter = Hash.new(0)
  array.each { |number| letter_counter[number.to_s] += 1 }
  
  final_pairs = letter_counter.values.map do |value|
    if value < 2
      0
    elsif value.odd?
      (value - 1) / 2
    else
      value / 2
    end
  end
  
  final_pairs.reduce(:+)
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
