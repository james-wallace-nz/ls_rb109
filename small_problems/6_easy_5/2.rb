# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

=begin
PROBLEM

Return the time in 24 hour format based on a number argument

Input: integer
Output: sring representing hh:mm


DATA STRUCTURE

Integer
String


ALGORITHM
- determine hours and minutes before or after midnight

  - call divmod on absolute integer
  - hours, minutes = integer.abs.divmod(60)
  - days, hours = hours.divmod(24)

  - if integer is less than 0 then before midnight, so subtract integer from 24:00

      - 24 - hours
      - 60 - minutes

    otherwise add integer to 00:00
       - 0 + hours
       - 0 + minutes


- initialize format_hours and format_minutes and assing hours and minutes using sprintf and '00' format
- return time string in format hours:minutes



CODE

=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(number)
  hours, minutes = number.divmod(MINUTES_PER_HOUR)
  if hours.abs > HOURS_PER_DAY
    days, hours = hours.divmod(HOURS_PER_DAY)
  end

  hour = (hours < 0 ? HOURS_PER_DAY + hours : hours)

  sprintf("%02d:%02d", hour, minutes)
end

def normalise_minutes(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalise_minutes(delta_minutes)

  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)

  format("%02d:%02d", hours, minutes)
end


# Examples:
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# Disregard Daylight Savings and Standard Time and other complications.