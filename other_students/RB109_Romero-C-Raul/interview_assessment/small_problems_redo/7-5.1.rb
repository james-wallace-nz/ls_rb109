ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(string)
  string = string.downcase
  counter = -1
  
  staggered_string = string.chars.map do |char|
    counter += 1 if ALPHABET.include?(char)
    counter.even? ? char.upcase : char
  end
  
  staggered_string.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'