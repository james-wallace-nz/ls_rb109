=begin
Write a program that asks the user for their age in years, then
converts that age into months.

Examples:
$ ruby age.rb
>> What is your age in years?
35
You are 420 months old.
=end

puts "How old are you?"
age_years = gets.chomp.to_i
age_months = age_years * 12
puts "You are #{age_months} months old."

# Note: if .to_i is called on a string with non-numerical characters,
# it will return a value of 0