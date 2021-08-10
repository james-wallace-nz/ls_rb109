=begin
# Problem:
  - Input: two integers
    - first integer represents the starting number of an inclusive range
    - second integer represents the ending number of an inclusive range
  - Output: print all the numbers in the set provided by the input numbers
    - if a number is divisible by 3, print "Fizz"
    - if a number is divisible by 5, print "Buzz"
    - if a number is divisible by 3 and 5, print "FizzBuzz"

Example:
  fizzbuzz(1, 15) 
  # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Algorithm:
  - Initialize a range from arg1 to arg2
  - Iterate over the range
    - If the current number is divisible by both 3 & 5 print "FizzBuzz"
    - If the current number is divisible by 3 print "Fizz"
    - If the current number is divisible by 5 print "Buzz"
    - Otherwise, print the current number
=end

def fizzbuzz(start, finish)
  (start..finish).each do |num|
    if num % 3 == 0 && num % 5 == 0
      print "FizzBuzz"
    elsif num % 3 == 0
      print "Fizz"
    elsif num % 5 == 0
      print "Buzz"
    else
      print num
    end

    print ", " unless num == finish
  end

  puts
end

fizzbuzz(1, 15)
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
