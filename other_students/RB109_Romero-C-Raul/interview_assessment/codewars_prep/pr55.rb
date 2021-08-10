def group_and_count(array)
  return nil if array == nil || array.empty?
  
  counter = Hash.new{0}
  
  array.each do |number|
    counter[number] += 1
  end
  
  counter
end

p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}
