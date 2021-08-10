=begin
There is a bug in the given code.
Expected Output:
[] => []
[3] => [21] ( 3 * 7)
[3, 4] => [9, 16] (3**2, 4**2)
[5, 6, 7] => [25, 36, 49] (5**2, 6**2, 7**2)
=end

def my_method(array)
  if array.empty?
    []
  elsif array.size == 1
    [7 * array.first]
  else
    array.map do |value|
      value * value
    end
  end
end

p my_method([]) == []
p my_method([3]) == [21]
p my_method([3, 4]) == [9, 16]
p my_method([5, 6, 7]) == [25, 36, 49]

=begin
The bug here comes from the fact that there is no further condition in the elsif
statement. Looking at the expected output, we can ascertain that we want to
multiply the array element by 7 if there is only a single element. Otherwise,
in the cases where there are multiple elements, we want to return a new array of
each element squared. By fixing the conditional statement, we can cause this to
occur.
=end
