# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.


# Problem:

# input: year
# output: century of that year as a string

# century is a 100 year interval 01 to 100, 101 to 200, 2001 to 2010, etc.
# century begins in year starting with 01
# century string has `st`, `nd`, `rd`, `th`


#  1 st
#  2 nd
#  3 rd

#  4 th
#  5 th
#  6 th
#  7 th
#  8 th
#  9 th
# 10 th
# 11 th
# 12 th
# 13 th
# 14 th
# 15 th
# 16 th
# 17 th
# 18 th
# 19 th
# 20 th

# 21 st
# 22 nd
# 23 rd

# 24 th
# 25 th
# 26 th

# Century suffixes
# 1 => st
# 2 => nd
# 3 => rd
# 4-10 => th
# 11-13 => th
# 14-20 => th

# Data Structures:

# string
# integer


# Algorithm:
# - determine century
# - convert to string and append suffix

# Code

def add_suffix(century)
  case century % 100
  when 11 then return 'th'
  when 12 then return 'th'
  when 13 then return 'th'
  end

  # digits = century.to_s.length
  # ending = century > 9 ? 10 ** (digits - 1) : 10

  case century % 10
  when 1  then 'st'
  when 2  then 'nd'
  when 3  then 'rd'
  else         'th'
  end
end


def century(year)
  century = year / 100
  century += 1 if year % 100 > 0
  century.to_s + add_suffix(century)
end

# Examples:
# puts add_suffix(20)  == 'th'
# puts add_suffix(21)  == 'st'
# puts add_suffix(20)  == 'th'
# puts add_suffix(3)   == 'rd'
# puts add_suffix(1)   == 'st'
# puts add_suffix(102) == 'nd'
# puts add_suffix(11)  == 'th'
# puts add_suffix(12)  == 'th'
# puts add_suffix(113) == 'th'
# puts add_suffix(1113) == 'th'


puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
