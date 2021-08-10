=begin
Input: an array of numbers
  - The array will always contain at least one number
  - The numbers will always be positive (see test cases)
  - You do not need to account for nested arrays
Output: the sum of the sums for each leading subsequence
  - i.e. (array[0]) + (array[0] + array[1]) + (array[0] + array[1] + array[2]) + ... etc = sum

Examples:
  sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
  sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
  sum_of_sums([4]) == 4
  sum_of_sums([1, 2, 3, 4, 5]) == 35

Algorithm:
  - Initialize a sum variable to 0
  - Iterate over the input array for transformation, for each element:
    - Add the element to sum
    - Return sum
  - This will return a new array of all the sums
  - Sum the array and return the sum
=end

def sum_of_sums(array)
  sum = 0
  array.map { |num| sum += num }.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
# Option 2
# Problem:
  - Input: an array of numbers
    - will always contain at least one number
  - Output: an integer
    - the sum of sums for each leading subsequence in the array
    - [1, 2, 3] => (1) + (1 + 2) + (1 + 2 + 3) => 1 + 3 + 6 => 10

# Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
  [(arr[0]), (arr[0] + arr[1]), (arr[0] + arr[1] + arr[2])]
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

# Algorithm:
  - Initialize an empty array sums
  - Initialize a length variable to 1
  - Loop
    - break if length is greater than or equal to the length of the input array
    - set the current sum equal to the subsection of the array beginning at index 0 and the size of length
    - Append the current sum to the sums array
    - Increment length
  - return the sum of the sums array
=end

def sum_of_sums(numbers)
  sums = []
  1.upto(numbers.size) do |length|
    sums << numbers[0, length].sum
  end
  
  sums.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
