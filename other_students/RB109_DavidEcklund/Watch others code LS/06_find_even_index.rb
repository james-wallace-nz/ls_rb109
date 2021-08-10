=begin
You are given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1. Empty arrays are equal to 0 in this problem.
=end

def find_even_index(array)
  return 0 if array.empty? 
  0.upto(array.length-1) do |index|
    if array[0...index].sum == array[(index + 1)..-1].sum
      return index
    end
  end
  return -1
end

p find_even_index([]) == 0
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

=begin

input = array of integers
output = index of AN integer where sum of each side is equal to each other (else, return -1)
empty array returns 0

DATA

array, integers

ALGORITHM

iterate through the array by index (use 1.upto)
  if the sum of the integers to the right == the sum of those on the left of it
    return  index of integer
  end
  increment index
end
return -1  

=end