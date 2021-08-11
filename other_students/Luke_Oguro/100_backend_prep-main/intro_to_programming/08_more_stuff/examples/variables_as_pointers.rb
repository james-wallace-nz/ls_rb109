def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
c = test(a)

puts "#{a.object_id} #{c.object_id}"