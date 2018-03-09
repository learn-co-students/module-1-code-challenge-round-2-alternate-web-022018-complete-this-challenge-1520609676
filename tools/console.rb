require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

happys = DriveIn.new("Happy's Sunset Drive-In")

# movie1 = Movie.new("movie1")
# movie2 = Movie.new("movie2")
# movie3 = Movie.new("movie3")

ms1 = MovieScreen.new("movie1", 7, happys)
ms2 = MovieScreen.new("movie2", 10, happys)
ms3 = MovieScreen.new("movie2", 5, happys)

car1 = Car.new(4, ms1)
car2 = Car.new(3, ms1)
car3 = Car.new(2, ms2)
car4 = Car.new(2, ms3)



Pry.start
