require('rspec')
require('vehicle')

describe('Vehicle') do

  describe('.all') do
    it('create an empty array') do
      expect(Vehicle.all()).to(eq([]))
    end
  end

end
