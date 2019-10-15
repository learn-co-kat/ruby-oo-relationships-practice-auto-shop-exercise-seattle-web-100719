class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end 

def this_mechanics_cars
  Car.all.select { |car| car.classification == self.specialty }
end 

def this_mechanics_car_owners
  array = []
  Car.all.each do |car| 
    if car.classification == self.specialty 
      array << car.car_owner 
    end 
  end 
    array.uniq
end 

def owner_names
  array = []
  Car.all.each do |car| 
    if car.classification == self.specialty 
      array << car.car_owner.name
    end 
  end 
    array.uniq
end 

end
