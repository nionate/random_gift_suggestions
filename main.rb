require_relative "suggestor"
require_relative "place"
require_relative "gift"

suggestor = Suggestor.new

falabella = Place.new name:"Falabella",address:"Nueva de Lyon 064"
pc_factory = Place.new name:"PC Factory",address:"Av. Manuel Montt 170"
ripley = Place.new name:"Ripley",address:"Andrés Bello 2422"
paris = Place.new name:"Paris",address:"Av. Nueva Providencia 2221"
sp_digital = Place.new name:"SP Digital",address:"Padre Mariano 356"
la_mechada = Place.new name:"La Mechada Nacional",address:"Av. Nueva Providencia 2236"

gift1 = Gift.new name:"Keyboard", type:"technology", price:53000, places:[pc_factory, sp_digital, falabella]

suggestor.gifts = [gift1]

nico = Person.new name:"Nico",preferences:["technology","food","smartphones","videogames"]

gift_suggested = suggestor.suggest_gift_for(nico)

puts "
  Random gift suggested for #{nico.name}:
  Name: #{gift_suggested.name}
  Type: #{gift_suggested.type}
  Places where you can buy it:
"
gift_suggested.places.each do |place|
  puts "- #{place.name} : #{place.address}"
end