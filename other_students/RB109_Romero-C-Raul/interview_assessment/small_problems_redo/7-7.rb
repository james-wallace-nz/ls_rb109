def multiply_list(arr1, arr2)
  
  arr1.map.with_index do |current_number, index|
    current_number * arr2[index]
  end
  
  # arr1.zip(arr2).map { |sub_array| sub_array.reduce(:* ) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]