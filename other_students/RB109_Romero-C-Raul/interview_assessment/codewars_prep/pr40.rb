=begin

ALGORITHM
- Iterate through string characters
	- If current character count in the string is > 1
		- convert current char into ')'
	- Else convert to '('
=end

def duplicate_encode(string)
	string = string.downcase
	
	string.chars.map do |char|
		string.count(char) == 1 ? '(' : ')'
	end.join
	
end


p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
