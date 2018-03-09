class MovieScreen
  attr_accessor :movie, :capacity
  @@all = []

  def initialize(movie, capacity)
    @movie = movie
    @capacity = capacity

    @@all << self
  end

  def self.all_screens
    @@all
  end

  def cars
    Car.all.select {|c| c.moviescreen == self}
  end

  def at_capacity
    cars.count == self.capacity
  end

  def add_car
    if at_capacity == true
      "Movie is sold out"
    else
      ncar = Car.new(4)
      ncar.moviescreen = self
      "Enjoy!"
    end
  end

  def how_many_viewers
    viewers_array = cars.map {|c| c.passenger_count}
    sum = 0
    viewers_array.each {|i| sum += i }
    sum
  end

end
