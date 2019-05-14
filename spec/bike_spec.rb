require 'bike'
require 'boris_bikes'

describe Bike do
  it 'Responds to the method working?' do
    # Arrange
    new_bike = Bike.new
    # Act / Assert
    expect(new_bike).to respond_to(:working?)
  end
end
