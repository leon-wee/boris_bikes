require_relative 'bike'
require_relative 'garage'
require_relative 'bike_container'

class Van
  include BikeContainer

  def load(broken_bike)
    fail 'Sorry, we only deliver broken bikes' unless broken_bike.broken?
    add_bike(broken_bike)
  end

  def deliver_broken_bikes_to(garage)
    bikes.each { |bike| garage.bikes << bike }
    bikes.count.times { remove_bike }
  end

  def collects_fixed_bikes_from(garage)
    garage.bikes.each { |bike| bikes << bike }
    garage.emptied
  end

  def deliver_fixed_bikes_to(docking_station)
    bikes.each { |fixed_bike| docking_station.bikes << fixed_bike }
    bikes.count.times { remove_bike }
  end

end