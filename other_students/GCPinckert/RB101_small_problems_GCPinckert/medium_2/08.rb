=begin
# Problem:
- Input: an integer
- Output: an integer, representing the next `featured` number greater than input
  - featured number =
    - odd
    - multiple of 7
    - digits occur exactly once each
  - Return an error message if there is no next featured number

# Examples:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) 
# -> There is no possible number that fulfills those requirements

# Algorithm:
- Iterate a loop from `n` to 9_999_999_999, tracking iteration number
  - Break the loop and return i if i is a featured number
- If the loop does not return i, return the error message

- Check to see if i is a featured number
  - return false if it is even
  - return false if it is not a multiple of 7
  - return false if any of the digits occur more than once
  - If none of the above conditions are triggered return true
=end

def featured(num)
  (num + 1).step(by: 1, to: 9_999_999_999) do |i|
    return i if featured_num?(i)
  end

  "There is no possible number that fulfills those requirements"
end

def featured_num?(num)
  digits = num.to_s.chars

  if num.even?
    false
  elsif num % 7 > 0
    false
  elsif digits.any? { |digit| digits.count(digit) > 1 }
    false
  else
    true
  end
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) 
# -> There is no possible number that fulfills those requirements
