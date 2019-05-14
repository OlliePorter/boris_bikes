require_relative 'bike'

class DockingStation
  def release_bike
    bike = Bike.new
    return bike
  end
end

docking_station = DockingStation.new
bike = Bike.new
docking_station.release_bike
