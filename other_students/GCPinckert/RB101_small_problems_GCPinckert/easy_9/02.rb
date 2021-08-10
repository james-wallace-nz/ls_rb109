=begin
# Problem:
  - Input: an integer
    - All test case integers are positive
    - All test case integers are non-zero
  - Output: the input integer * 2 _unless_ input is a double number
    - A double number:
      - Has an even number of digits
      - The left side of the digits are exactly the same as the right side of the digits
      - ex, 44 (4 & 4), 3333 (33 & 33), 103103 (103 & 103), 7676 (76 & 76)
      - not ex, 444 (4 & 44) 334433 (334 & 433) 107 (1 & 07)
    - If the input is a double number, return it as is

# Examples
twice(37) == 74                # 37 * 2 == 74
twice(44) == 44                # 44 is double number, do not change
twice(334433) == 668866        # 334|443 * 2
twice(444) == 888              # 444 * 2
twice(107) == 214              # 107 * 2
twice(103103) == 103103        # 103|103
twice(3333) == 3333            # 33|33
twice(7676) == 7676            # 76|76
twice(123_456_789_123_456_789) == 123_456_789_123_456_789 #123456789|123456789
twice(5) == 10                 # 5

# Algorithm
- Check to see if the input is a double number
  - Convert to string
  - Is the length of the string an even number?
  - Set halfway to length / 2
  - Divide the string into two halves and compare for equality
    - Right side is index through halfway exclusive
    - Left side is index halfway through last char inclusive
- If it is a double number, return the number
- Otherwise, return the number * 2
=end

def mirror_sides?(str)
  halfway = str.size / 2
  str[0...halfway] == str[halfway..-1]
end

# using even? in the && expression ensures you won't split up an odd number
# so the single digit number edge case is taken care of
def double_num?(num)
  num = num.to_s
  num.size.even? && mirror_sides?(num) 
end

def twice(num)
  double_num?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
