class MovieScreen

  attr_accessor :movie, :capacity, :cars

  @@all = []

  def initialize(movie, capacity, drive_in)
    @movie = movie
    @capacity = capacity
    @drive_in = drive_in
    @cars = []
    drive_in.screens << self
    @@all << self
  end

  def self.all_screens
    @@all
  end

  def at_capacity
    # Returns a boolean.  The return will be true if the number of cars at _this_ movie
    #screen is at capacity
    self.capacity == self.cars.count
  end

  def add_car(car)
    # Adds an instance of a car to _this_ movie screen if the movie screen
    #is not at capacity, creates a new car instance and returns the string "Enjoy!".
    #  If the movie screen is at capacity, return a string that says 'Movie is sold out'
    self.cars << car
  end

  def how_many_viewers?
    # returns a head count of how many people are watching the movie
    sum = 0
    self.cars.each {|c| sum += c.passenger_count}
    sum

  end

end
