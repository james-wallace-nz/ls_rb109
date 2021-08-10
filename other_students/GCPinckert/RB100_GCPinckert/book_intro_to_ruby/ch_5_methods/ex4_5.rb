=begin
Exercise 4:

What will the following code print to the screen?


def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")


The code above will print nothing to the console. Because the scream 
method uses an explicit return before calling puts, it will break
out of the function returning a value of nil. 

Exercise 5: 

Edit the method definition above so that it does print words to the
screen. What does it return now?
=end

def scream(words)
  words += "!!!!"
  puts words # prints words to console, returns nil
end

scream("Yippeeee")

=begin
The method scream will now print the argument passed to it with !!!!
added, but will still return nil, as the last expression evaluated
is puts and puts has a nil return value.
=end
