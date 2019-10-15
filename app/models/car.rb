class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic 
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end 

  def car_classifications
    @@all.map do |car|
      car.classification
    end 
  end 

  def mechanics_current_classification
    array = []
    @@all.each do |car|
      if car.mechanic.specialty == self.classification
        array << car.mechanic
      end 
    end
    array.uniq
  end 

end
