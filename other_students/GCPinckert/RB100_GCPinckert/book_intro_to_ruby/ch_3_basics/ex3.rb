movies = {
  titanic: "1997",
  space_odyssey_2001: "1968",
  weird_science: "1985",
  apocalypse_now: "1979",
  nightmare_before_christmas: "1993",
  first_blood: "1982",
  galaxy_quest: "1999"
}

movies.each { |k, v| puts v }

=begin
also works (from solution):

puts movies[:titanic]
puts movies[:space_odyssey_2001]
puts movies[:weird_science]
puts movies[:apocolypse_now]
puts movies[:nightmare_before_christmas]
puts movies[:first_blood]
puts movies[:galaxy_quest]
=end