require 'bike'
require 'boris_bikes'

describe Bike do
  it 'Responds to the method working?' do
    # Arrange
    new_bike = Bike.new
    # Act
    quality_test = new_bike.working?
    # Assert
    expect(quality_test).to respond_to(:working?)
  end
end
