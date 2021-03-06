require_relative 'bike' # require doesn't work here, need require relative

class DockingStation #  used when you referring to a file thats relative to 
  attr_reader :bikes
  attr_reader :capacity  
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike # the current file you are working on (basically, within the same project directory). 
    raise "ERROR! You can't do that... Docking Station is empty." if empty?
    @bikes.pop
  end

  def dock(new_bike)
    raise "ERROR! Docking station is full." if full?
    @bikes << new_bike
  end

  private
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.count == 0
  end
end