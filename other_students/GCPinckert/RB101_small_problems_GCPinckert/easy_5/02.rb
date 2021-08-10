=begin
# Problem
- Input: a time using minute based format
  - time of day represented as the number of minutes before or after midnight
  - If the number of mins is positive, it is after midnight
  - If the number is negative, it is before midnight
  - Midnight, therefore, is 0
  - The numbers are not constricted to the same day, for example
    - 3000 would be 2:00am
- Output: a string representing time in 24-hour format
  - i.e. "hh:mm"
  - The time should be what the it is given the amount of mins before or after
    midnight
  - You don't have to worry about Daylight Savings time or anything like that

- Conversions:
  - number of mins in an hour = 60
  - number of mins in a day = 1440
  - midnight to midnight, therefore, is 1440 (i.e. 1440 returns "00:00")

# Examples
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Ex 2. 
  - -3.divmod(60) => [-1, 57] mins = 57
  - -1.divmod(24) => [-1, 23] hour = 23
Ex 3.
  - 35.divmod(60) => [0, 35] mins = 35
  - 0.divmod(24) => [0, 0] hour = 0
Ex 4. 
  - -1437.divmod(60) => [-24, 3] mins = 3
  - -24.divmod(24) => [-1, 0] hour = 0
Ex 5. 
  - 300.divmod(60) => [50, 0] mins = 0
  - 50.divmod(24) => [2, 2] hour = 2
Ex 6.
  - 800.divmod(60) => [13, 20] mins = 20
  - 13.divmod(24) => [0, 13] hour = 13
Ex 7.
  - -4231.divmod(60) => [-71, 29] mins = 29
  - -71.divmod(24) => [-3, 1] hour = 1

# Algorithm
- Convert mins to array of [hours, mins]
- Set mins value equal to mins in this array
- Get the hour number in relation to 24-hour time
  - The remainder when dividing by 24
- Format these correctly in an output string and return
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(total_mins)
  total_hours, mins = total_mins.divmod(MINUTES_PER_HOUR)
  hours = total_hours.divmod(HOURS_PER_DAY)[1]
  "%02i:%02i" % [hours, mins]
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
