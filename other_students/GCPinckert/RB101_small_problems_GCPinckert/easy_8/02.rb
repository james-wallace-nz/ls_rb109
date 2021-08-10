=begin
Problem:
  - Make a mad-lib program
  - Prompt the user for a noun, a verb, an adj and an adv
  - Inject those into a story that you create

Example: 
  Enter a noun: dog
  Enter a verb: walk
  Enter an adjective: blue
  Enter an adverb: quickly

  Do you walk your blue dog quickly? That's hilarious!
=end

print "Enter a noun: "
noun = gets.chomp.downcase

print "Enter a verb: "
verb = gets.chomp.downcase

print "Enter an adjective: "
adjective = gets.chomp.downcase

print "Enter an adverb: "
adverb = gets.chomp.downcase

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "Why did the #{adjective} #{noun} cross the road #{adverb}? To #{verb} to the other side!"

puts [sentence_1, sentence_2].sample