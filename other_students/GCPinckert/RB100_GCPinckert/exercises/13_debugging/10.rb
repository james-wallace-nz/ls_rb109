# The given code results in an error message. Fix it.

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge!(character_classes[input])

puts 'Your character stats:'
puts player

=begin   
The problem here is that we are trying to access the hash values using a
string datatype, which will throw a TypeError, since the hash keys are not
strings, but symbols. Calling the string method to_sym on line 17 when we
get out input will ensure that we are passing the correct data type in order
to select the hash value via the key.

However, this still does not update the hash player. This is because we need
to use the destructive version of the method, #merge!. This will modify the
original calling array, player, so that when we pass it to puts on ln 22,
the correctly updated states will print to the screen.
=end