MOVES = {
  ['1', 'rock', 'r'] => 'Rock',
  ['2', 'paper', 'p'] => 'Paper',
  ['3', 'scissors', 's'] => 'Scissors'
}

WINNING_MOVES = {
  'Rock' => ['Scissors'],
  'Paper' => ['Rock'],
  'Scissors' => ['Paper']
}

def prompt(msg)
  puts "=> #{msg}"
end

def request_move
  move = nil
  loop do
    prompt "Enter your move: " \
           "\n '1' 'Rock' 'r' " \
           "\n '2' 'Paper' 'p' " \
           "\n '3' 'Scissors' 's'"
    move = gets.chomp
    break if valid_move?(move)
    prompt 'Invalid move, please try again'
  end
  normalise_player_move(move)
end

def valid_move?(move)
  valid = false
  MOVES.keys.each do |moves|
    valid = true if moves.any?(move.downcase)
  end
  valid
end

def normalise_player_move(move)
  MOVES.each do |keys, value|
    keys.each do |key|
      move = value if key == move
    end
  end
  move
end

def computer_move
  WINNING_MOVES.keys.sample
end

def determine_winner(player1, player2)
  if player1 == player2
    'Draw'
  elsif WINNING_MOVES[player1].include?(player2)
    'Player'
  elsif WINNING_MOVES[player2].include?(player1)
    'Computer'
  end
end

prompt 'Welcome to Rock, Paper, Scissors'

player_choice = request_move
computer_choice = computer_move
winner = determine_winner(player_choice, computer_choice)
prompt "Player chose #{player_choice}, Computer chose #{computer_choice}"
prompt "The winner is #{winner}!"
