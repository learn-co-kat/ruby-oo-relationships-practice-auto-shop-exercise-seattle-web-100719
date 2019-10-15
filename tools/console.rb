require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("James")
owner2 = CarOwner.new("Michael")
owner3 = CarOwner.new("Henry")

mechanic1 = Mechanic.new("Billy Bob", "antique")
mechanic2 = Mechanic.new("Harold", "exotic")
mechanic3 = Mechanic.new("Ferro", "clunker")

car1 = Car.new("Honda", "Civic", "antique", owner1, mechanic1)
car2 = Car.new("Ford", "Chevy", "exotic", owner1, mechanic2)
car3 = Car.new("Car make", "Beetle", "exotic", owner2, mechanic2)
car4 = Car.new("Lada", "Lada without ac", "clunker", owner1, mechanic3)
car5 = Car.new("Exotic make", "Exotic model", "exotic", owner2, mechanic2)
car6 = Car.new("Testla", "Ms20", "antique", owner3, mechanic1)

binding.pry
0
