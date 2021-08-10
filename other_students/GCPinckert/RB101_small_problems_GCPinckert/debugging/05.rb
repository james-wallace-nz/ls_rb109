cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end

  p sum += remaining_cards.sum
end

puts sum

=begin
We get a type error on line 34 because the remaining_cards variable still
references the original array. Since we have not captured the return value of the
map method call, the cards represented by symbols have not been transformed into
their integer point equivalent.

The sum of remaining cards calculation is off, because the same array (cards) is 
assigned to each key in the deck hash. Therefore, when we mutate this and deal
the player a card from any particular suit, we are actually mutating the same object
pointed to by each hash value. Duplicating the array and assigning a different
collection object to each hash key should fix this.
=end
