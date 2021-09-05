# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

# input: year integer greater than 0
# output: boolean - true if year is leap year

# a leap year is evenly divisible by 4 unless it is also divisible by 100
# If a year is evenly divisible by 100 it is not a leap year unless it is also evenly divisible by 400



# algorithm:
# - double conditionals:
  # divisible by 100?
  #   yes: divisible by 400?
  #     yes: leap year
  #     no: not leap year
  #   no: divisible by 4?
  #     yes: leap year
  #     no: not leap year

# code:

def leap_year?(year)
  if year % 100 == 0
    year % 400 == 0 ? true : false
  else
    year % 4 == 0 ? true : false
  end
end

def leap_year?(year)
 if year % 400 == 0
  true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
