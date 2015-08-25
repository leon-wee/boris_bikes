class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock(bike)
    fail 'Docking station is full' if bikes.count >= DEFAULT_CAPACITY
    bikes << bike
  end

  def release_bike
    fail 'No bikes available' if bikes.empty?
    bikes.pop
  end

end