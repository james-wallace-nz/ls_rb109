=begin

PROBLEM
- Input: Array
- Output: String

rules
    - Explicit rules
      - Write a method that takes an array of consecutive increasing letters
        as input and that returns the missing letter in the array
      - Length of the array will at least be 2
      - Only 1 case letters
      - Exactly one letter missing

DATA STRUCTURES
- Array
- String

ALGORITHM
- Convert every letter into its ordinal value
- Iterate through each ordinal value and
  - Check if next value is current value + 1
    - If true, continue
    - If false, push current value to an empty variable and transform
      into its corresponding character

=end

def find_missing_letter(array)
  ordinal_values = array.map(&:ord)
  missing_letter = ''
  
  ordinal_values.each_with_index do |value, index|
    break if index == ordinal_values.size - 1
    
    next_value = ordinal_values[index + 1]
    missing_letter << (value + 1).chr unless value + 1 == next_value
  end
  
  missing_letter
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"