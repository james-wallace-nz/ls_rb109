=begin
- Write a method that takes a string and returns a boolean indication whether
  this string has a balanced set of parenthesis
  
PROBLEM:
  - Input: string
  - OutputL Boolean
  
rules:
    - Explicit rules:
      - Write a method that takes a stirng and returns a boolean indicating
        whether this string has a balanced set of parentheses
      - A balanced set means there are equal amounts of '(' and ')' strings
    - Implicit rules:
      - No parentheses returns true

DATA STRUCTURE
- Arrays
- Strings

ALGORITHM
- Count how many string characters '(' appear on string and compare
  to the amount of characters ')' that also appear on string
  - If the amounts are equal, then parentheses are balanced
=end

def balancer(string)
  left_hand_paren = string.count('(')
  right_hand_paren = string.count(')')
  
  total = left_hand_paren - right_hand_paren
  
  total == 0 ? true : false
  
end

p balancer('hi')
p balancer('(hi')
p balancer('(hi)')

#p balancer(")hi(")