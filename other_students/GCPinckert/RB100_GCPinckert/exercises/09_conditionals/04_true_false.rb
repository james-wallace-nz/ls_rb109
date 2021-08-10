=begin
Using the given variable, write a ternary operator that prints "I'm
true!" if boolean is true, and prints "I'm false!" if boolean is 
false.
=end

boolean = [true, false].sample

boolean ? (puts "I'm true!") : (puts "I'm false!")