require 'boris_bikes'

describe DockingStation do
  it 'Docking station responds to release bike' do
    docking_station = DockingStation.new
    docking_station.release_bike
    expect(docking_station.release_bike).respond_to?(:release_bike)
  end

end