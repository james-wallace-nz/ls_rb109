=begin
# Problem:
- Input: an integer representing a year
  - the year will be greater than 1752
  - the modern Gregorian Calendar will be in use for the forseeable future
- Output: the number of Friday the 13ths in a given year

# Examples:
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

# Algorithm:
- Increment a counter to 0
- Iterate a loop from 1 to 12, tracking iteration
  - Create a new time object with the current iteration num, the given year,
    and the date of the 13th
  - If the time object represents a friday, increment the counter
- Return the counter
=end

def friday_13th(year)
  unlucky_fridays = 0

  1.upto(12) do |month|
    if Time.new(year, month, 13).friday?
      unlucky_fridays += 1
    end
  end

  unlucky_fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
