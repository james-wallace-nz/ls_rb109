=begin
The given code is a number game. The user picks a random number between 1
and a provided maximum and offers a given number of attempts to guess it. The
program is not working as expected.

The problem here is that we call the guess_number method again if the user
does not guess the correct number. This causes the program to select a new
random number for the winning number, as well as restarting the loop of
attempted guesses.

Instead of calling the method again, it's better to rely on the logic of the loop
for each guess. When this is done, we see that the user guessing the number does
not cause the program to break out of the loop. Adding another break statement
and moving a game over message to outside the loop will help with this.
end
=end

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end

  puts "Game Over"
end

guess_number(10, 3)
