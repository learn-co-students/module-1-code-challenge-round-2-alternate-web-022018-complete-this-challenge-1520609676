class DriveIn

  attr_accessor :name, :screens

  @@all = []

  def initialize(name)
    @name = "Happy's Sunset Drive-In"
    @screens = []
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars
    MovieScreen.all_screens.map {|ms| ms.cars}.flatten
  end

  def cars_with(integer)
    # this method takes in an integer that represents the number of people in a car.
    # This method should return all cars that have that amount of people
    all_cars.select do |c|
      c.passenger_count == integer
    end
  end

  def full_house?
    # returns true if all movie screens are at capacity
    capacity = MovieScreen.all_screens.map {|ms| ms.at_capacity}

    capacity.uniq == true
  end

  def whats_playing
    # returns the names of all movies currently playing
    MovieScreen.all_screens.map {|ms| ms.movie}
  end

  def available_movies
    # returns a hash with a top level key for every available movie, each key will point
    # to a hash with a key of 'available_spots', which points to the amount of spots
    # available at that screening as well as a key of 'people_watching' that points to
    # the total number of people watching the movie.

    hash = {}
    whats_playing.each {|m| hash["#{m}"] = ""}
    hash
    hash.each do |k, v|
      # v = "available_spots:" 10, "people_watching:" 30
    end
    hash
  end

end
