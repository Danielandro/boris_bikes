require '/Users/student/Desktop/Desktop/projects/boris_bikes/lib/bike.rb'

class DockingStation
attr_reader :docked_bike 

  def initialize
    @docked_bike = []
  end

  def dock(bike)
    @docked_bike << bike
  end

  def release_bike
    Bike.new
  end

end