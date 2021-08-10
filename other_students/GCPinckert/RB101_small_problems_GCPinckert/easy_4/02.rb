# Write a method that:
  # Takes a year as input and returns the century
  # Return value should be a string beginning with the century number
  # And ending with `st`, `nd`, `rd` or `th` as appropriate
  # New centuries begin in years that end with `01`
    # i.e. 1901 - 2000 are the 20th century

# Examples:
  # century(2000) == '20th'
  # century(2001) == '21st'
  # century(1965) == '20th'
  # century(256) == '3rd'
  # century(5) == '1st'
  # century(10103) == '102nd'
  # century(1052) == '11th'
  # century(1127) == '12th'
  # century(11201) == '113th'

# Implicit Rules:
  # If the tens digit is 1, then apply `th` suffix
  # If the tens digit is not 1, then:
    # units digit 0 or 4-9: `th`
    # units digit 1: `st`
    # units digit 2: `nd`
    # units digit 3: `rd`

# Data Types:
  # Input = integer, use for mathematical calculations
  # Output = string

# Algorithm:
  # Calculate century number
    # If year is evenly divisible by 100 (i.e. 500, 1800, etc)
      # century_num is year divided by 100
    # If year is not evenly divisible by 100 (i.e. 43, 532, 1904, etc)
      # century_num is year divided by 100 plus 1
  # Covert to string with appropriate suffix
    # Convert int century_num to string
    # Isolate tens digit of century_num (penultimate digit)
    # If tens_digit is 1
      # Apply `th` suffix
    # Otherwise:
      # Isolate units digit of century_num (last digit)
      # If units digit is 0 or 4-9: `th`
      # If units digit is 1: `st`
      # If units digit is 2: `nd`
      # If units digit is 3: `rd`
    # Return string

def add_century_ending(century)
  if century[-2] == '1'
    century + 'th'
  else
    case century[-1]
    when '1' then century + 'st'
    when '2' then century + 'nd'
    when '3' then century + 'rd'
    else          century + 'th'
    end
  end
end

def century(year)
  century_number =  if year % 100 == 0
                      year / 100
                    else
                      (year / 100) + 1
                    end
  
  add_century_ending(century_number.to_s)
end

puts century(2000)  == '20th'
puts century(2001)  == '21st'
puts century(1965)  == '20th'
puts century(256)   == '3rd'
puts century(5)     == '1st'
puts century(10103) == '102nd'
puts century(1052)  == '11th'
puts century(1127)  == '12th'
puts century(11201) == '113th'
