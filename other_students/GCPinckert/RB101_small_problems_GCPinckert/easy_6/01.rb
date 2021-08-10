=begin
# Problem:
- Input: a floating point number
  - Represents an angle between 0 and 360 degrees
  - Based on examples, we can assume the number will always be positive
- Output: a string representing that angle in degrees, mins, and seconds
  - i.e. 00 00' 00"
  - "\xC2\xB0" can be used as a constant to represent degrees
  - ' connotes minutes and " connotes seconds
  - Use two digit numbers with leading 0s when formatting mins and seconds
- Conversions:
  - Degrees = whole number part of the decimal
  - Minutes multiply remaining decimal by 60. Resulting whole number = minutes
  - Seconds multiply remaining decimal by 60. Resulting number = seconds (rounded if necessary)

# Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Algorithm
- Initialize DEGREE symbol constant and conversion constants
- Get the number of degrees, convert the float to an integer
- Get the number of minutes
  - Subtract the degrees from the number and multiply by 60
  - Initialize seconds to result - result as an integer
  - Set mins to result as an integer
- Get the number of seconds
  - Multiply seconds by 60 and round to nearest whole number
- Convert to correctly formatted string
=end

DEGREE = "\xC2\xB0"
MINS_PER_DEGREE = 60
SECS_PER_MIN = 60

def dms(angle)
  degrees = angle.to_i
  mins = (angle - degrees) * MINS_PER_DEGREE
  secs = ((mins - mins.to_i) * SECS_PER_MIN).to_i
  mins = mins.to_i
  
  format(%(#{degrees}#{DEGREE}%02d'%02d"), mins, secs)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
