=begin
The given code prompts the user to set their own password, and then prompts
them to log in with that password, but throws an error.

The problem here is that we try to access the local variable `password` from
within the `set_password` method without passing it in as an argument. The
method has it's own discreet scope, so will not be able to access the local
variable. Further, we will again need to pass the `password` variable as an argument
to the `verify_password` method, which also tries to access it while not in
scope.

Once we get the program to run without errors, we see there is another problem.
The local variable password is reassigned to the password set by the user within
the set_password method. This breaks the link between the local variable outside
the method and the method parameter password. They do not, therefore, both 
reference the string object set by the user. Instead, password outside the method
will still reference `nil`, causing authentication to fail.

Fix this by initializing local variable password as an empty string, and using
a mutating method to preserve the link between it and the originally referenced
string object. We will also need to modify the conditional on ln 44 to reflect
this change.
=end

password = ''

def set_password(password)
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password << new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if password.empty?
  set_password(password)
end

verify_password(password)
