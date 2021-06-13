=begin

PROBLEM
- Input: integer, integer (2 arguments)
- Output: integer

rules
    - Explicit rules
      - Write a method that:
        - Given a positive integer 'n' and a positive integer 'p'
          - Find a positive integer 'k', if it exists, such that the sum
            of the digits of n taken to the successive powers of p
            is equal to k * n
      - Return -1 if there is no number k

problem domain
- ex. 89, 1 -> (8 ** 1) + (9 ** 2) == 89 * k

DATA STRUCTURE
- Arrays
- Integer

ALGORITHM
- Obtain every digit from the input 'n' integer and take them to the successive 
  power of 'p'
  - Sum all the numbers after powers have been applied


- Take first argument given
  - Multiply it by a range of numbers from (1...x) where x would be the number that
    makes the successive power total equal first argument times x
    - Return 'x' if this is true
    - Break out of this loop when argument 1 times current number > successive
      power sum
  
=end

def dig_pow(n, p)
  digits = n.digits.reverse
  counter = p - 1
  
  successive_power_total = digits.map do |number|
    counter += 1
    number ** counter
  end.sum
  
  multiplier = 1
  total = 0
  
  until total >= successive_power_total
    total = n * multiplier
    return multiplier if total == successive_power_total
    
    multiplier += 1
  end
  
  -1 
end

p dig_pow(89, 1) #== 1
p dig_pow(92, 1) #== -1
p dig_pow(46288, 3) #== 51
 p dig_pow(695, 2) #== 2
