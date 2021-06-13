def obtain_chunks(string, sz)
  chunks = []
  
  string.chars.each_slice(sz) do |current_slice|
    chunks << current_slice if current_slice.size >= sz
  end
  
  chunks.map(&:join)
end

def sum_of_cubes(string)
  sum_cubes = string.chars.map do |digit|
    digit.to_i ** 3
  end.sum
  
  sum_cubes % 2 == 0
end

def revrot(string, sz)
  return '' if sz <= 0 || string.empty?
  chunks = obtain_chunks(string, sz)
  
  chunks.map do |current_chunk|
    if sum_of_cubes(current_chunk)
      current_chunk.reverse
    else
      current_chunk.chars.rotate.join
    end
  end.join
end

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
