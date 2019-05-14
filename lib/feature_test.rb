require_relative 'bike'
require_relative 'boris_bikes'

docking_station = DockingStation.new
docking_station.release_bike
docking_station.dock_bike("This is a bike")
docking_station.show_bikes
