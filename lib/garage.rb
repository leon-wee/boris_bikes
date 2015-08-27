require_relative 'bike'
require_relative 'bike_container'

class Garage
  include BikeContainer

  def collects_broken_bikes
  end
end