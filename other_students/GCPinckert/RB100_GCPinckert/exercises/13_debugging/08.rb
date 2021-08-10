# The given code throws an error
# Figure out what's wrong and how to fix it

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i == things.length || i == colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

=begin   
The problem here is that the array colors has one more item in it than the
array things. Therefore, on the last iteration of the loop, things[i] has
a value of nil (there is no element, and the index is beyond the scope of
the array), which cannot be passed to puts and causes a TypeError. There
are a few ways to fix this, you can add an additional object to the things
array, but I have chosen to modify the condition passed to the break 
statement to reflect the length of both arrays. This ensures that we will 
break out of the loop before exceeding the bounds of either.
=end

