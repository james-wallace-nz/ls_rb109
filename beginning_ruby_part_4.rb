PRODUCTS = [
  { name: 'Thinkpad x210', price: 220 },
  { name: 'Thinkpad x220', price: 250 },
  { name: 'Thinkpad x250', price: 979 },
  { name: 'Thinkpad x230', price: 300 },
  { name: 'Thinkpad x230', price: 330 },
  { name: 'Thinkpad x230', price: 350 },
  { name: 'Thinkpad x240', price: 700 },
  { name: 'Macbook Leopard', price: 300 },
  { name: 'Macbook Air', price: 700 },
  { name: 'Macbook Pro', price: 600 },
  { name: 'Macbook', price: 1449 },
  { name: 'Dell Latitude', price: 200 },
  { name: 'Dell Latitude', price: 650 },
  { name: 'Dell Inspiron', price: 300 },
  { name: 'Dell Inspiron', price: 450 }
]

query1 = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad'
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(query)
  PRODUCTS.select do |product|
    product[:price] >= query[:price_min] &&
    product[:price] <= query[:price_max] &&
    product[:name].downcase.include?(query[:q])
  end
end

p search(query1) == [{ name: 'Thinkpad x220', price: 250 }]

p search(query2) == [{ name: 'Dell Inspiron', price: 300 }, { name: 'Dell Inspiron', price: 450 }]

# inputs: query hash
# outputs: array of hash elements matching query criteria

# query criteria:
# price is above or equal to price_min
# price is below or equal to price_max
# => price_min <= price: <= price_max
# name includes q:

# assumptions:
# query always includes price_min, price_max and q:

# algorithim:
# select PRODUCTS into new array where element[price:] price_min <= price: <= price_max
# Using new array, select elements where element[name:] includes q:
# return array
