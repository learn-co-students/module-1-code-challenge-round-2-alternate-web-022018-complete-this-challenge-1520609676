class DriveIn
@@all = []

  def initialize
    @name = "Happy's Sunset Drive-In"
    @@all << self
  end

  def self.screens
    @@all
  end

  def cars_with(ppl_car)
    #return all cars with amount of ppl in that car
     screens = Cars.all.select {|c| c.passengercount == ppl_car}
     # screens gives me all the cars with equal passenger counts
   end

  def full_house
     boolean = Moviescreen.all_screens.map {|n| n.at_capacity}
     # go through boolean, and combine all like values,
     full = boolean.uniq!
    if full == true
      true
    else
      false
    end
  end

   def whats_playing
     #all names of movie_screen
     MovieScreen.all_screens.map {|n| n.movie}
   end

   def available_movies
#top key = available movie,
# key points points to available spots,
#   which points to amount of spots avaiable
     a = {}
   end






  # def screen
  # end
end
