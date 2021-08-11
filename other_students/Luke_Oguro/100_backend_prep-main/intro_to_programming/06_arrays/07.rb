array = ["a", "b", "c"]

array.each_with_index { |v, i| puts "#{i + 1}. #{v}" }