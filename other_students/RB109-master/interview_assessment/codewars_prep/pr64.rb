def is_int_array(arr)
  return false if arr == nil || arr == ''
  
  arr.all? do |element|
    return false if element == nil
    element % 1 == 0
  end
end
