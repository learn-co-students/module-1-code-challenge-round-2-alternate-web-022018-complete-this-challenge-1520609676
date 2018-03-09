class Car

  attr_accessor :passenger_count, :movie_screen

  @@all = []

  def initialize(passenger_count, movie_screen)
    @passenger_count = passenger_count
    @movie_screen = movie_screen
    movie_screen.cars << self
    @@all << self
  end

  def self.all
    @@all
  end

  # def movie_screen
  #   # Returns the movie screen _this_ car is at
  #
  # end

end
