=begin
- Take string as an input and return string in reverse order
=end

def reverse(string)
  string_array = []
  
  string.chars.each do |char|
    string_array.unshift(char)
  end
  
  string_array.join
end

p reverse('hello') == 'olleh'
p reverse('car') == 'rac'
p reverse('purple') == 'elprup'