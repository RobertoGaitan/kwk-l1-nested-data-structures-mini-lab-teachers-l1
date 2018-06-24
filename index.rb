# example ingredients array
ingredients = [
    ["rye", "sourdough", "baguette"],
    ["ham", "salami", "turkey"],
    ["swiss", "munster", "cheddar"],
    ["mayo", "mustard", "tabasco"]
]

def sandwich_request(ingredients, order)
  all_found = Array.new(order.length)
  counter = 0
  order.each do |item|
    all_found[counter] = "F"
    ingredients.each do |ingredient_row|
      ingredient_row.each do |ingredient|
        if item == ingredient
          all_found[counter] = "T"
        end
      end
    end
    counter += 1
  end
  if all_found.include? "F"
    return FALSE
  else
    return true
  end
end

# example city_info hash
cities = {
  :new_york => {
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => {
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => {
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => {
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  }
}

def city_populations(cities)
  totpop = 0
   cities.each do |city, data| 
    totpop += data[:population]
 #   puts "#{totpop}"
  end
  return totpop
end
