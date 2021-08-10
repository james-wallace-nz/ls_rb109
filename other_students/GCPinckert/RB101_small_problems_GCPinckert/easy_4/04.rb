# Continued from 03.rb
# For years 0-1752:
  # A leap year is any year evenly divisible by 4
# For years 1752 onward:
    # A leap year is evenly divisible by 4
    # If the year is also divisible by 100
      # It is not a leap year unless it is also evenly divisible by 400

def leap_year?(year)
  if year < 1752
    return true if year % 4 == 0
  else 
    if year % 100 == 0
      return true if year % 400 == 0
      return false
    end
    return true if year % 4 == 0
  end
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
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true