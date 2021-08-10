=begin
Exercise 1:
Write a program that checks if the sequence of characters "lab"
exists in the following strings. If it does exist, print out the word.

* "laboratory"
* "experiment"
* "Pans Labryinth"
* "elaborate"
* "polar bear"
=end

def has_lab?(string)
  if string =~ /lab/
    puts string
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

# note: for case insensitive options, use the i add on
# if string +~ /lab/i
# In this case, "Pan's Labryinth" above will print