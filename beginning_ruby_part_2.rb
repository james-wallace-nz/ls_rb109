def amethod(param)
  param + ' universe'
  param << ' world'
end

str = 'hello'
amethod(str)

p str

def amethod(param)
  param += ' universe'
  param << ' world'
end

str = 'hello'
amethod(str)

p str

a = 'hello'
b = a
b << ' world'
puts a
# => 'hello world'
puts b
# => 'hello world'

a = 'hey'
b << ' universe'
puts a
# => 'hey'
puts b
# => 'hello world universe'
