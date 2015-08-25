class DockingStation

  DEFAULT_CAPACITY = 1

  attr_reader :bikes, :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock(bike)
    bikes << bike
  end

  def release_bike
    fail 'No bikes available' if bikes.empty?
    bikes.pop
  end

end