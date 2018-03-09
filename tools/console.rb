require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

drivein = DriveIn.new
energy = MovieScreen.new("energy", 10)
cool = MovieScreen.new("cool", 400)
bmw = Car.new(4)
honda = Car.new(5)
benz = Car.new(4)



Pry.start
