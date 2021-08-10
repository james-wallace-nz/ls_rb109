=begin
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1

Input = positive integer
returns = next bigger integer formed by same digits
  OR if none, return -1

Algorithm:

Break down the integer into digits, sort, join
iterate from num + 1 up to next number that contains all of those digits
  break each one into its component digits, sort, join and test for equivalence

=end

def next_bigger_num(integer_input)
  sort_proc = Proc.new { |x| x.to_s.chars.sort.reverse.join.to_i }
  sorted_input = sort_proc.call(integer_input)

  return -1 if integer_input == sorted_input
  
  tester = integer_input

  loop do
    tester += 1
    return tester if sort_proc.call(tester) == sorted_input

  end
end
  

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(5143) == 5314
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(13531) == 15133
p next_bigger_num(123456789) == 123456798

