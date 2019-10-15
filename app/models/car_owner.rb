class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 

  def this_owners_cars
    Car.all.select do |car|
    car.car_owner == self
    end 
  end 

  def this_owners_mechanics
    array = []
    Car.all.each do |car|
      if car.car_owner == self
        array << car.mechanic 
      end 
    end 
    array
  end 

  def car_average
    Car.all.count / @@all.count 
  end 

end
