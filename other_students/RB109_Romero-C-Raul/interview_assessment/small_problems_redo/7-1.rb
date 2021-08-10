def interleave(arr1, arr2)
  new_array = []
  
  arr1.each_with_index do |element, index|
    new_array << element
    new_array << arr2[index]
  end
  
  new_array
  
  #arr1.zip(arr2).flatten # Alternative Solution
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
