=begin
- Write a method that takes two arguments, a positive integer and a boolean
- Calculates the bonus for a given salary
- If boolean is true, bonus is half the salary
- If boolean is false, bonus should be 0

Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

- Input: Positive integer (salary), Boolean (gets_bonus?)
- Output: Integer, either 0 or the calculated bonus

- If gets_bonus?:
  - Return salary / 2
- Else
  - Return 0
=end

def calculate_bonus(salary, gets_bonus)
  gets_bonus ? (salary * 0.5).round(2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000