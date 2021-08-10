# https://www.codewars.com/kata/58d06bfbc43d20767e000074/solutions/ruby

def damaged_or_sunk (board, attacks)
  all_boats = {:first_boat => 0,
               :second_boat => 0,
               :third_boat => 0
               }
  
  board.each {|sub| sub.each {|num| all_boats[:first_boat] += 1 if num == 1}}
  board.each {|sub| sub.each {|num| all_boats[:second_boat] += 1 if num == 2}}
  board.each {|sub| sub.each {|num| all_boats[:third_boat] += 1 if num == 3}}
  
  all_boats = all_boats.select {|k, v| v > 0} # the only boats actually on this board
 
  attacked_positions = []
  board = board.reverse
  attacks.each do |coordinates|
    attacked_positions << board[coordinates[-1] - 1][coordinates[0] - 1]
  end

  result = {'sunk'=> 0, 'damaged'=> 0, 'not_touched'=> 0, 'points'=> 0}

  first_hits = 0
  second_hits = 0
  third_hits = 0

  attacked_positions.each do |num|
    first_hits += 1 if num == 1
    second_hits += 1 if num == 2
    third_hits += 1 if num == 3
  end

  if all_boats.keys.include?(:first_boat)
    result['sunk'] += 1 if first_hits == all_boats[:first_boat]
    result['damaged'] += 1 if first_hits < all_boats[:first_boat] &&
      first_hits > 0
    result['not_touched'] += 1 if first_hits == 0
  end

  if all_boats.keys.include?(:second_boat)
    result['sunk'] += 1 if second_hits == all_boats[:second_boat]
    result['damaged'] += 1 if second_hits < all_boats[:second_boat] &&
      second_hits > 0
    result['not_touched'] += 1 if second_hits == 0
  end

  if all_boats.keys.include?(:third_boat)
    result['sunk'] += 1 if third_hits == all_boats[:third_boat]
    result['damaged'] += 1 if third_hits < all_boats[:third_boat] &&
      third_hits > 0
    result['not_touched'] += 1 if third_hits == 0
  end

  result['points'] += (1 * result['sunk'])
  result['points'] += (0.5 * result['damaged']).round
  result['points'] -= (1 * result['not_touched'])
result
end







# -scoring
# >> 1 point for every whole boat sank
# >> 0.5 points for each boat hit at least once (NOT including sunk boats)
# >> -1 point for an untouched boat

# METHOD CALL INFORMATION
board = [[0,0,0,2,2,0],
         [0,3,0,0,0,0],
         [0,3,0,1,0,0],
         [0,3,0,1,0,0]]

attacks = [[2, 1], [1, 3], [4, 2]]

p damaged_or_sunk(board, attacks)

# coordinates are off by one. Indexes start at 0, coordinates at 1