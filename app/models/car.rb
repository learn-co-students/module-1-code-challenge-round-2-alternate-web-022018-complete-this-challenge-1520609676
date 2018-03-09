class Car
  attr_accessor  :passenger_count, :moviescreen
  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end

  def self.all
    @@all
  end
end
