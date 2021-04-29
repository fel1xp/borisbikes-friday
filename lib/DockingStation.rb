require_relative 'bike' # require doesn't work here, need require relative
class DockingStation #  used when you referring to a file thats relative to 
  attr_reader :bike  
  def release_bike # the current file you are working on (basically, within the same project directory).
    raise "ERROR! You can't do that... Docking Station is empty." if bike.nil?
    
    Bike.new

  end
  def dock(bike)
    @bike = bike
  end
end