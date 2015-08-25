class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    bikes << bike
  end

  def release_bike
    fail 'No bikes available' if bikes.empty?
    bikes.pop
  end

end