module BikeContainer

  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def add_bike(bike)
    fail "#{self.class.name} is full" if full?
    bikes << bike
  end

  def remove_bike
    fail "#{self.class.name} is already empty" if empty?
    bikes.pop
  end

  def empty?
    bikes.empty?
  end

  def full?
    bikes.length >= capacity
  end

end