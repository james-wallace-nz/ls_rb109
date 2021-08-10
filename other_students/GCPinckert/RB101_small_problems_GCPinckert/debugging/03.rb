=begin
- Input: an array of nums
- Output: Boolean, true if array consists of a valid series
  - valid series must contain exactly three odd numbers
  - the numbers in the series must sum to 47
=end

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

# Here the mistake was using the assignment operator instead of equality on ln 12
# Assignment always returns the value that is assigned, in this case truthy
# So the condition in the ternary operator will always return true
