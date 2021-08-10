def string_expansion(str)
  return str if str.empty? || str.chars.all? {|l| l =~ /[a-z]/i }
  str = str.chars
  result = ''
  
  current_char = ''
  str.each_with_index do |char, idx|
    if char =~ /[1-9]/ && str[idx + 1] !=~ /[1-9]/
      current_char = char
    elsif char =~ /[1-9]/ && str[idx + 1] =~ /[1-9]/
      next 
    elsif current_char.empty?
      result << char
    else
      result << char * current_char.to_i
    end
  end
  result
  
end

p string_expansion('3abc')