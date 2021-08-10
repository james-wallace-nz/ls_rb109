=begin
write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers except if a number is divisible by 3, print out "Fizz", if a number is divisible by 5, print out "Buzz", and if a number is divisible by 3 and 5, print out "FizzBuzz".

=end

def fizzbuzz(start_int, end_int)
  start_int.upto(end_int) do |current_int|
    if current_int % 3 == 0 && current_int % 5 == 0
      puts "FizzBuzz"
    elsif current_int % 3 == 0
      puts "Fizz"
    elsif current_int % 5 == 0
      puts "Buzz"
    else
      puts current_int
    end
  end
end


fizzbuzz(1, 10)
fizzbuzz(2, 15)


=begin
input = two integers
  starting num and ending num
output = print all numbers between the two except:
          - for those divisible by:
            3 : print "Fizz"
            5 : print "Buzz"
            3 & 5 : print "Fizzbuzz"

ALGORITHM
  iterate start upto last
    if 
    follow rules
    
end

=end
