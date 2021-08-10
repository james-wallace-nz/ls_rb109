=begin
# Problem
Write two methods that each take a time of day in 24 hour format, and return
the number of minutes before and after midnight, respectively. Both methods
should return a value in the range 0..1439. Do not use Date or Time.

after_midnight:
- Input: a string in 24 hour format (i.e. "hh:mm", "12:34")
  - Assume always a valid formatted string
  - May be either 00:00 or 24:00 to represent midnight
- Output: an integer representing the number of mins between the given time and
  the previous midnight
  - Both 00:00 and 24:00 should return 0

before_midnight:
- Input: a string in 24 hour format ("hh:mm")
  - Assume always has valid formatting
  - May be either 00:00 or 24:00 to represent midnight
- Output: an integer representing the number of mins between the given time and
  the next midnight
  - Both 00:00 and 24:00 should return 0

Conversions:
- Hours per day: 24
- Mins per hour: 60
- Mins per day : 1440

# Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

# Algorithm
- Convert input string to two number variables, hour and minutes
- Get total number of minutes:
  - hour * mins per hour + mins
- in after_midnight, return total number of mins
- if before_midnight, return mins per day - total number of mins
=end

HOURS_PER_DAY = 24
MINS_PER_HOUR = 60
MINS_PER_DAY = HOURS_PER_DAY * MINS_PER_HOUR

def after_midnight(time)
  hour = time[0, 2].to_i
  mins = time[-2, 2].to_i
  total_mins = hour * MINS_PER_HOUR + mins
  if total_mins == 1440
    0
  else
    total_mins
  end
end

def before_midnight(time)
  total_mins = after_midnight(time)
  if total_mins == 0
    0
  else
    MINS_PER_DAY - total_mins
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
