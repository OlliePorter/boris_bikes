require 'boris_bikes'

  describe Bike do
    it 'Is Boris Bike working' do
      bike = Bike.new
      bike.working
      expect(bike.working).respond_to?(:working)
    end

  end