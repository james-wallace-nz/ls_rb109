=begin
- Create a simple tip calculator
- Prompt for a bill amount and tip rate
- Compute the tip
- Display the tip and total amount of the bill

Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

- Input: 2 floats, bill and tip percentage
- Output: 2 floats, tip and total

- Get bill amount from user, convert to float
- Get tip percentage from user, convert to float and divide by 100
- Calculate tip: bill amount * tip percentage
- Calculate total: bill amount + tip 
- Display results


=end

def get_amounts
  print "What is the bill? "
  bill = gets.chomp.to_f
  print "What is the tip percentage? "
  tip_rate = (gets.chomp.to_f) / 100
  [bill, tip_rate]
end

def calculate_tip(bill, tip_percent)
  (bill * tip_percent).round(2)
end

def calculate_total(bill, tip)
  (bill + tip).round(2)
end

def display_results(total, tip)
  puts
  puts "The tip is $#{format('%.2f', tip)}"
  puts "The total is $#{format('%.2f', total)}"
end

bill, tip_percent = get_amounts
tip = calculate_tip(bill, tip_percent)
total = calculate_total(bill, tip)
display_results(total, tip)