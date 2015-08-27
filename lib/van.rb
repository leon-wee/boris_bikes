require_relative 'bike'
require_relative 'bike_container'

class Van
  include BikeContainer

  def load_bike(bike)
    fail 'Please load a broken bike' if bike.broken?
    bikes << bike
  end

end