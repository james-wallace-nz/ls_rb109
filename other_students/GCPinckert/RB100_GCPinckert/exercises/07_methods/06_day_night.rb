=begin
The variable below will be randomly assigned as `true` or `false`. Write
a method named `time_of_day` that, given a boolean as an argument, prints
"It's daytime!" if `true` or "It's nighttime!" if `false`. Pass
`daylight` into the method as the argument to determine whether it's
day or night. 
=end

daylight = [true, false].sample

def time_of_day(bool)
  bool ? (puts "It's daytime!") : (puts "It's nighttime!")
end

time_of_day(daylight)
