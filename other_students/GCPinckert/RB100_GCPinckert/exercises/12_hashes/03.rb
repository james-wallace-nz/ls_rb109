# Using the hash from 02.rb, delete the :mileage key and it's value

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)
p car