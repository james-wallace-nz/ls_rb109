movies = {
  pulp_fiction: 1994,
  flight_club: 1999,
  city_of_god: 2002,
  tenet: 2020
}

# Call individually
puts movies[:pulp_fiction]
puts movies[:flight_club]
puts movies[:city_of_god]
puts movies[:tenet]

# Iterate over hash
movies.each do |key, value|
  puts value
end