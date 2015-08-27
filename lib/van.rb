require_relative 'bike'
require_relative 'garage'
require_relative 'bike_container'

class Van
  include BikeContainer

  def load_broken_bike(bike)
    fail 'Please load a broken bike' unless bike.broken?
    add_bike(bike)
  end

  def deliver_broken_bikes(garage)
    garage.collects_broken_bikes
    bikes = []
  end

end