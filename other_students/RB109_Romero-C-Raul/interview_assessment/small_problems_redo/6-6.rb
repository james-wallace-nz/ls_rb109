def merge(array1, array2)
  
  (array1 + array2).uniq
  array1 | array2 # There two lines do the same thing

end



p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]