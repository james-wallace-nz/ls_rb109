# Problem

User makes a choice
Computer makes a choice
Winner is displayed

# Examples



# Data Structures

Winner in hash = {
    'Rock' => ['Scissors'],
    'Paper' => ['Rock'], 
    'Scissors' => ['Paper']
}

Options is Winner keys


# Algorithm

Welcome
Request user makes choice - validate and set variable
    loop
    prompt
    set variable
    validate
        if choice is '1', '2', '3' or 'Rock', 'Paper', 'Scissors' then valid
    end
Computer makes random choice - set variable
    winner_hash.keys.sample
Determine winner
    of player_choice == computer_choice then drawer
    if winner_hash[player_choice] value array includes computer_choice then player wins
    if winner_hash[computer_choice] value array includes player_choice then computer wins
Display winner

display_amount
    split number by .
    left
        pop 3 digits at a time and unshift into new array
        join new array with ','
    right = round to 2 dp
    join left and right with '.'

# Code