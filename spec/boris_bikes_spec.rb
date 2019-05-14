require 'boris_bikes'

describe DockingStation do
  it 'Docking station responds to release bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
  it 'It can make a new bike' do
    # Arrange
    docking_station = DockingStation.new
    # Act
    bike = docking_station.release_bike
    # Assert
    expect(bike).to be_a_kind_of(Bike)
  end
  it "Can dock a bike" do
    # Arrange
    docking_station = DockingStation.new
    # Assert
    expect(docking_station).to respond_to(:dock_bike)
  end
  it "Dock bike has the right number of arguments" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:dock_bike).with(1).argument
  end
  it "Returns the bike that we docked" do
    # Arrange
    docking_station = DockingStation.new

    # Act
    now_docking = docking_station.dock_bike("This is a bike")
    # Assert
    expect(now_docking).to eq("This is a bike")
  end
  it "Can show bikes" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:bike)
  end
  it "will raise an error if you ask for a bike but there is no bike" do
    # arrange
    docking_station = DockingStation.new
    bike = Bike.new
    # act
    docking_station.dock_bike(bike)
    bike = docking_station.release_bike
    # assert
    expect { docking_station.release_bike }.to raise_error
  end
  it 'should know what total is' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:total)
  end
  it 'should have a total of 1 after 1 bike is docked' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    the_total = docking_station.total
    expect(the_total).to eq(1)
  end
end
