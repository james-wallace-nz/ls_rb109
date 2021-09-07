# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

=begin
PROBLEM
Represent a float as degrees, minutes and seconds (30°00'00")

Input: float
Output: string

decimals represent minutes and seconds
positive numbers respresent the degree


DATA STRUCUTRES

Float
String

ALGORITHM
- split the float into numbers left and right of decimal place
  - call divmod(1) on float => [integer, decimals] => multiple assignment degrees and minutes
- then spit decimal numbers into minutes and seconds
  - call divmod(60) on minutes => [minutes, seconds] => multiple assignment to minutes and seconds
- then format the degrees, minutes and seconds appropriately

CODE
=end

DEGREE = "\xC2\xB0"
SECONDS_PER_MINUTE = 60
MINUTES_PER_DEGREE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE

def fix_float(float)
  while float < 0
    float += 360
  end
  while float > 360
    float -= 360
  end
  float
end

def dms(float)
  float = fix_float(float)
  degrees, remainder = float.divmod(1)
  remainder *= MINUTES_PER_DEGREE
  minutes, remainder = remainder.divmod(1)
  seconds = remainder * SECONDS_PER_MINUTE

  format("%d#{DEGREE}%02d'%02d\"", degrees, minutes, seconds)
end

# Examples:

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) #== %(0°00'00")

p dms(400)
p dms(-40)
p dms(-420)

# Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

