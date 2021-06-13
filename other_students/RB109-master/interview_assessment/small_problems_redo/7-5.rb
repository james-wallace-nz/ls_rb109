def staggered_case(string)
  string = string.downcase
  
  staggered_string = string.chars.map.with_index do |char, index|
    index.even? ? char.upcase : char
  end
  
  staggered_string.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'