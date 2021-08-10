# What errors does the following code give and what do they mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Example 1
find_first_nonzero_among([0, 0, 1, 0, 2, 0])
=begin
  This method call throws an argument error, because only one parameter
  is defined in the method def and six arguments are passed here when
  the method is invoked. Looking at the code within the method def,
  it is clear the argument should be an array. Fix the error by adding
  the necessary brackets around the 6 arguments in the method call,
  turning them into one argument
=end

# Example 2
find_first_nonzero_among([1])
=begin
  Once we fix the previous method call, this line throws an NoMethodError
  because we are passing in one argument, and Integer, and the method 
  tries to call the #each method on it, but #each needs to be called
  by an array. Adding brackets around the argument here should fix the
  problem
=end

