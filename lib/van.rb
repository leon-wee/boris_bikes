require_relative 'bike'
require_relative 'garage'
require_relative 'bike_container'

class Van
  include BikeContainer

  def load(broken_bike)
    fail 'Sorry, we only deliver broken bikes' unless broken_bike.broken?
    add_bike(broken_bike)
  end

  def deliver_bikes_to(garage)
    bikes.each { |bike| garage.bikes << bike }
    bikes = []
  end

end