def buy_fruit(array)
  fruits = []
  
  array.map do |sub_array|
    1.upto(sub_array[-1]) do
      fruits << sub_array[0]
    end
  end
  
  fruits
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]