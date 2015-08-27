require_relative 'bike'
require_relative 'bike_container'

class DockingStation
  include BikeContainer

  def dock(bike)
    fail 'Docking station is full' if full?
    bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

end