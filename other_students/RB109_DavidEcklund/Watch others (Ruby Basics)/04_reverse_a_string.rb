=begin
take a string as an argument, return the string in reverse order without using the built-in reverse method.
=end

def reverse_string(str)
  arr = str.chars
  results = []
  loop do
    a = arr.pop
    results << a
    break if arr.empty?
  end
  results.join
end


p reverse_string("abcde") == "edcba"
p reverse_string(" ") == " "
p reverse_string("football") == "llabtoof"

=begin
split string into array
init results []
iterate over array
  pop last char off and << it to results
  break when array is empty
end
join results


=end
