# Write a method that:
  # Takes an integer, any year greater than 0, as an argument
  # Returns a Boolean:
    # true if the year is a leap year, false otherwise
  # A leap year is defined thus:
    # Every year that is evenly divisible by 4
    # If the year is also divisible by 100
      # It is not a leap year unless it is also evenly divisible by 400

# If year modulo 100 is 0
  # true if year modulo 400 is 0
# Else if year modulo 4 is 0
  # true
# Else
  # false

def leap_year?(year)
  if year % 100 == 0
    return true if year % 400 == 0
    return false
  end
  return true if year % 4 == 0
  false
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

# Further Exploration:
# Rewrite the method to perform tests in the opposite order
# Go from most common to least common cases

def leap_year2?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      else
        return false
      end
    end

    return true
  end

  false
end

p leap_year2?(2016) == true
p leap_year2?(2015) == false
p leap_year2?(2100) == false
p leap_year2?(2400) == true
p leap_year2?(240000) == true
p leap_year2?(240001) == false
p leap_year2?(2000) == true
p leap_year2?(1900) == false
p leap_year2?(1752) == true
p leap_year2?(1700) == false
p leap_year2?(1) == false
p leap_year2?(100) == false
p leap_year2?(400) == true
