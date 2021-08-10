=begin

ALGORITHM
- Determine the size of the given array
- Partition the array based on the (index number + 1):
  - If index_number + 1 <= (array.size / 2.0) for evens
  - if index_numer + 1 <= (array.size / 2.0) for odds

=end

def halvsies(array)
  slice = array.size.even? ? (array.size / 2) : (array.size / 2) + 1
  
  array.partition.with_index do |_, index|
    (index + 1) <= slice
  end
  
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]