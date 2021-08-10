=begin
- Write a method that takes one argument, a positive integer
- Returns a string of alternating 1s and 0s, always starting with 1
- The length of the string should match the given integer

Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

- Input: positive integer
- Output: string of alternating 1s and 0s, beginning with 1

- Set an empty string variable
- Set a counter variable = 1
- Loop through the following steps:
- If counter is odd:
  - Concatenate 1 to the string to be returned
- If the counter is even:
  - Concatenate 0 to the string to be returned
- Increment counter
- Break the loop when counter == length of input integer
- Return string
=end

def stringy(size)
  counter = 1
  string = ''
  until counter > size
    counter.odd? ? string << '1' : string << '0'
    counter += 1
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts

# Further Exploration: Make it so the method can take an optional
# argument that defaults to 1. If the method is called with this argument
# set to 0, the returned string will start with 0 instead of 1

def stringy_options(size, beginning=1)
  numbers = ''
  size.times do |index|
    if beginning == 1
      index.even? ? numbers << '1' : numbers << '0'
    else
      index.even? ? numbers << '0' : numbers << '1'
    end
  end
  numbers
end

puts stringy_options(6) == '101010'        # => true
puts stringy_options(9) == '101010101'     # => true
puts stringy_options(4) == '1010'          # => true
puts stringy_options(7) == '1010101'       # => true
puts stringy_options(6, 0) == '010101'      # => true
puts stringy_options(9, 0) == '010101010'   # => true
puts stringy_options(4, 0) == '0101'        # => true
puts stringy_options(7, 0) == '0101010'     # => true
