=begin

ALGORITHM
- Iterate through each character
	- If character is a letter, push it to a collection
	- if character is a '#', delete last element from collection

=end


def clean_string(string)
	final_chars = []
	
	string.chars.each do |char|
		final_chars << char unless char == '#'
		final_chars.pop if char == '#'
	end
	
	final_chars.join
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
