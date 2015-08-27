require_relative 'bike'
require_relative 'van'
require_relative 'bike_container'

class Garage
  include BikeContainer

  # def collects_broken_bikes
  #   van.bike
  # end

end