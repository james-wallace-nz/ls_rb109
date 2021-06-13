def find_outlier(array)
  
  evens_and_odds = array.partition do |number|
    number % 2 == 0
  end
  
  evens_and_odds.select { |sub_array| sub_array.size == 1 }.flatten.first
end



p find_outlier([0, 1, 2]) == 1
p find_outlier([1, 2, 3]) == 2
p find_outlier([2,6,8,10,3]) == 3
