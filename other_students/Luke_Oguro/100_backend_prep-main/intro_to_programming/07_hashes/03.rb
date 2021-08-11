prices = {
  hot_dog: 2.5,
  sundae: 1.5,
  hamburger: 4.0
}

prices.each_key { |k| puts "#{k}" }
prices.each_value { |v| puts "#{v}" }
prices.each { |k, v| puts "#{k}: $#{v}" }