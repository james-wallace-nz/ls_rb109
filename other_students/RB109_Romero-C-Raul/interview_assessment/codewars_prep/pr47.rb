def array_diff(a, b)
  a - b
end

p array_diff([1,2], [1]) #== [2]
p array_diff([1,2,2], [1]) #== [2,2]
p array_diff([1,2,2], [2]) #== [1]
p array_diff([1,2,2], []) #== [1,2,2]
p array_diff([], [1,2]) #== []
