require_relative 'bike'
require_relative 'bike_container'

class DockingStation
  include BikeContainer

  def dock(bike)
    fail 'Please only dock bikes' unless bike.respond_to?(:broken?)
    add_bike(bike)
  end

  def release_bike
    fail 'No bikes available' if working_bikes.empty?
    bikes.delete(working_bikes.pop)
  end

  private

  def working_bikes
    bikes.reject { |bike| bike.broken? }
  end

end