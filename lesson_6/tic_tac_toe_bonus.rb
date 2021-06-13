INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +   # rows
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] +   # columns
                [[1, 5, 9], [3, 5, 7]]                # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(list, separator = ', ', join = 'or')
  if list.size <= 2
    list.join(" #{join} ")
  else
    joined = []
    list.each_with_index do |num, idx|
      if idx == list.size - 1
        joined << list[idx]
      elsif idx == list.size - 2
        joined << list[idx]
        joined << "#{separator}"
        joined << "#{join} "
      else
        joined << list[idx]
        joined << "#{separator}"
      end
    end
    joined.join
  end
end

def alternate_player(player)
  if player == 'Player'
    'Computer'
  else
    'Player'
  end
end

def places_piece!(brd, player)
  if player == 'Player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd), ', ', 'or')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt "Sorry, that's not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).all?(PLAYER_MARKER)
      return 'Player'
    elsif brd.values_at(*line).all?(COMPUTER_MARKER)
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board
  current_player = 'Player'
  display_board(board)

  loop do
    display_board(board)

    places_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)

    places_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt 'Play again? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing Tic Tac Toe! Good Bye.'


# 1.

# Write a method called joinor that will produce the following result:

# def joinor(list, separator = ', ', join = 'or')
#   if list.size <= 2
#     list.join(" #{join} ")
#   else
#     joined = []
#     list.each_with_index do |num, idx|
#       if idx == list.size - 1
#         joined << list[idx]
#       elsif idx == list.size - 2
#         joined << list[idx]
#         joined << "#{separator}"
#         joined << "#{join} "
#       else
#         joined << list[idx]
#         joined << "#{separator}"
#       end
#     end
#     joined.join
#   end
# end

# p joinor([1, 2])                   ==  "1 or 2"
# p joinor([1, 2, 3])                == "1, 2, or 3"
# p joinor([1, 2, 3], '; ')          == "1; 2; or 3"
# p joinor([1, 2, 3], ', ', 'and')   == "1, 2, and 3"
