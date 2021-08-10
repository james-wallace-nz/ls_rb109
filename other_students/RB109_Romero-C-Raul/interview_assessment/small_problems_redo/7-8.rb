def multiply_all_pairs(arr1, arr2)
  
  first_pairs = arr2.map { |num| num * arr1[0] }
  second_pairs = arr2.map { |num| num * arr1[1] }

  (first_pairs + second_pairs).sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
