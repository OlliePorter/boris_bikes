require_relative 'bike'

class DockingStation

  attr_reader :bike, :total

  def release_bike
    bike = Bike.new
    return bike
  end

  def dock_bike(bike)
    @bike = bike
    change_total
  end

  def change_total
    @total += 1
  end

end

