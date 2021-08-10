#accept an array (arr)
#initialize new array (result) as empty array
# start loop
# use each_with_index to use that so that
# you select the item that is in even index positions
# and you do this in a loop until 

def yes_no(arr)
  result = []
  index = 0
  
  until arr.empty?
    result << arr.delete_at(index)
    index += 1
    index = 0 if index > arr.size - 1
  end
  result[-1], result[-2] = result[-2], result[-1]
  result

end

p yes_no([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
p yes_no(['this', 'code', 'is', 'right', 'the'])

