def reverse(list)
  reverse_array = []
  (list.size - 1).downto(0) do |index|
    reverse_array << list[index]
  end
  
  reverse_array
end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true