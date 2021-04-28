require_relative 'bike' # require doesn't work here, need require relative
class DockingStation #  used when you referring to a file thats relative to 
  def release_bike # the current file you are working on (basically, within the same project directory).
    Bike.new
  end
end
