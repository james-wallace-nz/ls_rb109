# input: array (array1)
# output: same array, but with elements reversed (array1)
# rules: cannot use #reverse methods, mutate original array

# accept an array as argument (arr)
# start a loop
# replace the first index position with the last index position with
# --> multiple variable assignment 
# increase the first position, and decrease the last position
# until middle is reached

# arr even amount of elements --> half size of arr - 1
# arr odd amount of elements --> half size of arr - 1

def reverse!(arr)
  half_point = (arr.size / 2) - 1
  start_index = 0
  end_index = -1

  until start_index > half_point
    arr[start_index], arr[end_index] = arr[end_index], arr[start_index]
    start_index += 1
    end_index -= 1
  end
  arr
end

list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []