require_relative 'bike'
require_relative 'van'
require_relative 'bike_container'

class Garage
  include BikeContainer

  def fix_bikes
    bikes.map { |bike| bike.fix }
  end
end